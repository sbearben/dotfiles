# Dotfiles

## How to install

The installation step requires the [XCode Command Line
Tools](https://developer.apple.com/downloads) and may overwrite existing
dotfiles in your HOME and `.vim` directories.

```bash
bash -c "$(curl -fsSL raw.github.com/sbearben/dotfiles/main/bin/dotfiles)" bash install-all
```

## How to update

Run the update when:

- You make a change to `~/.dotfiles/git/gitconfig`, `~/.dotfiles/vscode/settings.json`, or `~/.dotfiles_exts/vscode_settings.json` (the only files that are copied rather than symlinked).
- You want to pull changes from the remote repository.
- You want to update Homebrew formulae.

Run the dotfiles command:

```bash
dotfiles update
```

## Extensions

Certain files can be extended using an extensions repo. The repo is expected to live locally at `~/.dotfiles_exts`, and supports the files listed below. In order to download an extensions repo, can use [`dotfiles download-extensions`](#dotfiles-download-extensions)

The expected extension files in the repo are as follows (each is optional, only a partial set needs to be provided):

- `bash_profile`
- `bash_aliases`
- `bash_functions`
- `gitconfig`
- `vscode_settings.json`

**Note:** in order for any changes to `vscode_settings.json` to apply, will need to run [`dotfiles update`](#dotfiles-update) or [`dotfiles vscode setting-install`](#dotfiles-vscode-settings-install). Changes to any of the remaining files can be applied by restarting the terminal, or sourcing `~/.bash_profile`.

## Commands

### Core

#### dotfiles install-all

```bash
dotfiles install-all [options]
```

Will bootstrap everything and install all apps, packages, dotfiles, etc. For configuring a new device.

| Option                         | Description                                 |
| ------------------------------ | --------------------------------------------|
| `--extensions-remote <string>` | Link to github dotfiles extensions repo     |

#### dotfiles install

```bash
dotfiles install [options]
```

Similar to `install-all`, but offers more tailored install options.

| Option                         | Description                                 |
| ------------------------------ | --------------------------------------------|
| `--no-sync=false`              | Suppress pulling from the remote repository |
| `--install-packages=false`     | Install package updates                     |
| `--install-apps=false`         | Install macOS applications                  |
| `--extensions-remote <string>` | Link to github dotfiles extensions repo     |

#### dotfiles update

```bash
dotfiles update
```

Syncs dotfiles with remote repo, updates packages, links/copies dotfiles including vscode settings.

#### dotfiles download-extensions

```bash
dotfiles download-extensions <string>
```

Given a url to an extensions repo, downloads it and copies to `~/.dotfiles_exts`.

#### dotfiles mirror

```bash
dotfiles mirror
```

Links/copies dotfiles including vscode settings.

### macOS

#### dotfiles macos install-apps

```bash
dotfiles macos install-apps
```

Install macOS applications.

#### dotfiles macos apply-defaults

```bash
dotfiles macos apply-defaults
```

Applies custom macOS system settings. Will potentially override manually configured settings.

#### dotfiles macos configure-dock

```bash
dotfiles macos configure-dock
```

Configures the macOS dock with desired applications.

### VSCode

#### dotfiles vscode settings-create

```bash
dotfiles vscode settings-create
```

Given the base `~/.dotfiles/vscode/settings.json`, and any potential extension settings (see documentation on dotfiles extensions), creates a merged settings json file.

#### dotfiles vscode settings-diff

```bash
dotfiles vscode settings-diff
```

 Diffs the merged base and extensions settings with the current settings used by vscode.

#### dotfiles vscode settings-install

```bash
dotfiles vscode settings-install
```

Given the base dotfiles settings json, and any potential extension settings, will create the final settings file and install it.
