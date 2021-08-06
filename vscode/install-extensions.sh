# Visual Studio Code :: Package list
pkglist=(
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
msjsdiag.vscode-react-native
naumovs.color-highlight
rbbit.typescript-hero
timonwong.shellcheck
Tyriar.lorem-ipsum
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
