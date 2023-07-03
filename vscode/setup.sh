#!/usr/bin/env bash

function install_vscode_extensions() {
  # Visual Studio Code :: Extension list
  local -a pkglist=(
    DavidAnson.vscode-markdownlint
    dbaeumer.vscode-eslint
    donjayamanne.githistory
    eamodio.gitlens
    esbenp.prettier-vscode
    github.copilot
    golang.go
    Gruntfuggly.todo-tree
    k--kato.intellij-idea-keybindings
    mohsen1.prettify-json
    ms-vscode.cpptools
    naumovs.color-highlight
    streetsidesoftware.code-spell-checker
    timonwong.shellcheck
    Tyriar.lorem-ipsum
    # Ruby extensions
    rebornix.ruby
    wingrunr21.vscode-ruby
    castwide.solargraph
  )
  local installed_extensions
  installed_extensions=$(code --list-extensions)

  for EXT in "${pkglist[@]}"; do
    if echo "$installed_extensions" | grep -q "$EXT"; then
      echo "Extension '$EXT' is already installed."
    else
      code --install-extension "$EXT"
    fi
  done
}

# Create symbolic link for settings.json
function symlink_vscode_settings() {
  local dotfiles_dir=$1
  # Note: when creating symbolic links we need to use the absolute source path or won't work
  ln -fs "${dotfiles_dir}/vscode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
}
