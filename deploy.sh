#!/usr/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOY_DIR="$HOME/.emacs.d"

echo "Configurating EMACS..."

#Deploy config and custom lisp code
ln -s "$DIR/config/config.org" "$DEPLOY_DIR"
ln -s "$DIR/config/init.el" "$DEPLOY_DIR"
ln -s "$DIR/lisp" "$DEPLOY_DIR"

# Create custom file
touch "$DEPLOY_DIR/custom.el"

echo "Emacs Config Files Were Succefully Deployed as SymLinks in $DEPLOY_DIR"
