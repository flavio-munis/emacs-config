#!/usr/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Configurating EMACS..."
cp -Tabs "$DIR/config/" "$HOME/"
echo "Emacs Config Files Were Succefully Deployed as SymLinks in $HOME"
touch "$HOME/" .custom.el
echo "Created Custom Configurations File"

echo "Emacs Configs Succefully Deployed!"
