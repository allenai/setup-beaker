# setup-beaker

A GitHub Action for setting up the Beaker command-line client.

## Inputs

### `token` (required)

Your Beaker [token](https://beaker.org/user).

### `workspace` (optional)

The default workspace to use.

## Outputs

### `account`

The name of the authenticated Beaker account.

## Example

```yaml
- name: Setup Beaker
  uses: allenai/setup-beaker@v1
  with:
    token: ${{ secrets.BEAKER_TOKEN }}
    workspace: ai2/beaker-testing
- name: Verify Beaker install
  run: |
    beaker account whoami
```
