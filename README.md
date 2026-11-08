# Agend Systems Homebrew Tap

Homebrew casks for Agend Systems applications.

## Codex Usage

Install the Codex Usage macOS menu-bar app:

```sh
brew tap Agend-Systems/tap
brew install --cask Agend-Systems/tap/codex-usage
```

Install future releases through Homebrew:

```sh
brew update
brew upgrade --cask codex-usage
```

Codex Usage releases are signed and notarized by Apple.

Source and releases: <https://github.com/Agend-Systems/codex-usage-tracker>

## Maintaining the cask

The Codex Usage release workflow calls this repository's reusable update workflow after a
new signed and notarized release has been published. It passes the published tag and uses
the `HOMEBREW_TAP_DEPLOY_KEY` secret in `Agend-Systems/codex-usage-tracker`, whose public key
is installed here as a write-enabled deploy key. There is no scheduled polling.

For a manual update or retry, run **Update Codex Usage cask** from this repository's
Actions tab. Supply a release tag, or leave it blank to use the latest release. Manual
runs use this repository's `GITHUB_TOKEN` and do not need the deploy key.
