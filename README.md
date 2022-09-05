# Dotfiles

## How to install

The installation step requires the [XCode Command Line
Tools](https://developer.apple.com/downloads) and may overwrite existing
dotfiles in your HOME and `.vim` directories.

```bash
$ bash -c "$(curl -fsSL raw.github.com/sbearben/dotfiles/main/bin/dotfiles)" bash --install-apps
```

## How to update

Run the update when:

- You want to pull changes from the remote repository.
- You want to update Homebrew formulae.

Run the dotfiles command:

```bash
$ dotfiles
```

Options:

| Option                | Description                                                        |
| --------------------- | ------------------------------------------------------------------ |
| `-h`, `--help`        | Help                                                               |
| `-l`, `--list`        | List of additional applications to install                         |
| `--no-packages`       | Suppress package updates                                           |
| `--no-sync`           | Suppress pulling from the remote repository                        |
| `--install-apps`      | Install macOS applications                                         |
| `--extensions-remote` | Link to github dotfiles extensions repo                            |
| `--extensions-local`  | Location to install extensions repo (uses default if not provided) |

## Features

### Custom macOS defaults

Custom macOS settings can be applied during the `dotfiles` process. They can
also be applied independently by running the following command:

```bash
$ ./macos/macosdefaults
```

### Configure macOS dock

Configure the macOS dock with installed and system applications by running the
following command:

```bash
$ ./macos/dock.sh
```
