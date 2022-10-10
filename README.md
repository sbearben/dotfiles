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
