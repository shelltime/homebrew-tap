# ShellTime Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [ShellTime](https://shelltime.xyz) CLI.

## Installation

```bash
brew tap shelltime/tap
brew install shelltime
```

## Upgrade

```bash
brew upgrade shelltime
```

## Post-Install Setup

After installation, run the quick setup:

```bash
shelltime init
```

Or configure manually:

```bash
shelltime auth
shelltime hooks install
shelltime daemon install
```

## What is ShellTime?

ShellTime tracks and analyzes your shell usage, helping you understand your DevOps workflow. It provides insights into your command-line activity with features like:

- Command tracking across bash, zsh, and fish
- Background sync via a lightweight daemon
- AI-powered command suggestions

Learn more at [shelltime.xyz](https://shelltime.xyz).

## Uninstall

```bash
brew uninstall shelltime
brew untap shelltime/tap
```

## License

MIT
