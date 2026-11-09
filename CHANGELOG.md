# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

### Fixed

- Detect the architecture with `uname -m` instead of `uname -p`, which prints `unknown` on Ubuntu 26.04 runners.

## [v2.0.1](https://github.com/allenai/setup-beaker/releases/tag/v2.0.1) - 2023-06-07

## [v2.0.0](https://github.com/allenai/setup-beaker/releases/tag/v2.0.0) - 2022-08-15

- Removed usage of [deprecated set-output](https://github.blog/changelog/2022-10-11-github-actions-deprecating-save-state-and-set-output-commands/).

### Changed

- Updated for new Beaker release process. Input `github_token` is no longer required.

## [v1.1.1](https://github.com/allenai/setup-beaker/releases/tag/v1.1.1) - 2022-06-27

### Fixed

- Fixed for updated release process.

## [v1.1.0](https://github.com/allenai/setup-beaker/releases/tag/v1.1.0) - 2022-06-09

### Changed

- Updated for new Beaker release process. Input `github_token` is now required.

## [v1.0.0](https://github.com/allenai/setup-beaker/releases/tag/v1.0.0) - 2022-04-13

### Added

- Stabilized API for `v1.0.0`.

## [v0.1.0](https://github.com/allenai/setup-beaker/releases/tag/v0.1.0) - 2022-04-13

### Added

- Added initial version of the action.
