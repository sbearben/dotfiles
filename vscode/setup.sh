#!/usr/bin/env bash

install_vscode_extensions() {
    # Visual Studio Code :: Extension list
    local -a pkglist=(
        DavidAnson.vscode-markdownlint
        dbaeumer.vscode-eslint
        donjayamanne.githistory
        eamodio.gitlens
        esbenp.prettier-vscode
        golang.go
        Gruntfuggly.todo-tree
        k--kato.intellij-idea-keybindings
        mohsen1.prettify-json
        ms-vscode.cpptools
        ms-vscode.vscode-typescript-tslint-plugin
        naumovs.color-highlight
        rbbit.typescript-hero
        streetsidesoftware.code-spell-checker
        timonwong.shellcheck
        Tyriar.lorem-ipsum
    )

    for EXT in "${pkglist[@]}"; do
        code --install-extension "$EXT"
    done
}

# Create symbolic link for settings.json
# param - location of  dotfiles directory
symlink_vscode_settings() {
    # Note: when creating symbolic links we need to use the absolute source path or won't work
    ln -fs "${1}/vscode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
}
