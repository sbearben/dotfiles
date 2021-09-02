# Dotfiles

## How to install

The installation step requires the [XCode Command Line
Tools](https://developer.apple.com/downloads) and may overwrite existing
dotfiles in your HOME and `.vim` directories.

```bash
$ bash -c "$(curl -fsSL raw.github.com/sbearben/dotfiles/main/bin/dotfiles)"
```

## How to update

Run the update when:

* You want to pull changes from the remote repository.
* You want to update Homebrew formulae.

Run the dotfiles command:

```bash
$ dotfiles
```

Options:

| Option | Description |
|-|-|
| `-h`, `--help` | Help |
| `-l`, `--list` | List of additional applications to install |
| `--no-packages` | Suppress package updates |
| `--no-sync` | Suppress pulling from the remote repository |
| `--install-apps` | Install macOS applications |

## Features

### Automatic software installation

Homebrew formulae:

* [apktool](https://ibotpeaches.github.io/Apktool/)
* [bash-completion@2](https://github.com/scop/bash-completion)
* [dockutil](https://github.com/kcrawford/dockutil)
* [node](https://nodejs.org/en/)
* [scrcpy](https://github.com/Genymobile/scrcpy)
* [tldr](https://github.com/tldr-pages/tldr)

macOS applications:

* [Android Studio](https://developer.android.com/studio)
* [Flipper](https://fbflipper.com/)
* [Flux](https://justgetflux.com/)
* [Google Chrome](https://www.google.com/intl/en_ca/chrome/)
* [Slack](https://slack.com/intl/en-ca/)
* [Spotify](https://www.spotify.com/us/)
* [Visual Studio Code](https://code.visualstudio.com/)

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
