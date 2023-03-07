#!/usr/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cp -Tabs "$DIR/config" "$HOME/"
echo "Emacs Config Files Were Succefully Deployed as SymLinks in $HOME"
