# Homebrew Tap for Vulners

Homebrew formulae for [Vulners](https://vulners.com) tools.

## How to Use

```bash
brew tap kidoz/vulners
```

Then install any formula below.

## Available Formulae

| Formula        | Description                                                                         | Version |
|----------------|-------------------------------------------------------------------------------------|---------|
| `vulners-cli`  | [CLI vulnerability scanner](https://github.com/kidoz/vulners-cli) powered by Vulners | 1.2.2   |

### vulners-cli

```bash
brew install vulners-cli
```

```bash
vulners version
vulners scan
```

For the full list of commands, see the [vulners-cli documentation](https://github.com/kidoz/vulners-cli).

**Supported platforms:** macOS (Apple Silicon, Intel)

## Updating

```bash
brew update
brew upgrade <formula>
```

## Uninstalling

```bash
brew uninstall <formula>
brew untap kidoz/vulners   # remove the tap entirely
```

## License

MIT
