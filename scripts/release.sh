#!/bin/bash

set -e

export PYTHONPATH='./'

TAG=v$(cat VERSION)
MINOR_TAG=${TAG%.*}
MAJOR_TAG=${TAG%.*.*}

read -p "Creating new release for $TAG. Do you want to continue? [Y/n] " prompt

if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]; then
    python scripts/prepare_changelog.py
    git add -A
    git commit -m "Bump version to $TAG for release" || true && git push
    echo "Creating new git tag $TAG"
    git tag -a "$TAG" -m "$TAG"
    git push --delete origin "$MINOR_TAG" || true
    git tag -fa "$MINOR_TAG" -m "$MINOR_TAG"
    git push --delete origin "$MAJOR_TAG" || true
    git tag -fa "$MAJOR_TAG" -m "$MAJOR_TAG"
    git push --tags
else
    echo "Cancelled"
    exit 1
fi
