#!/usr/bin/env bash

# Visual Studio Code :: Package list


install_vscode_extensions() {
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
        timonwong.shellcheck
        Tyriar.lorem-ipsum
    )

    for EXT in "${pkglist[@]}"; do
        code --install-extension "$EXT"
    done
}


