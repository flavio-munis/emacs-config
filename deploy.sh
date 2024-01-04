#!/usr/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOY_DIR="$HOME/.emacs.d"

echo "Configurating EMACS..."
cp -Tabs "$DIR/config/" $DEPLOY_DIR
echo "Emacs Config Files Were Succefully Deployed as SymLinks in $DEPLOY_DIR"
