#!/usr/bin/bash

CURR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOY_DIR="$HOME/.config/emacs"

mkdir -p $DEPLOY_DIR

echo "Creatring Symbolic Links"

# Deploy config and custom lisp code
ln -s "$CURR_DIR/config/config.org" "$DEPLOY_DIR"
ln -s "$CURR_DIR/config/init.el"    "$DEPLOY_DIR"
ln -s "$CURR_DIR/config/scripts"    "$DEPLOY_DIR"

# Create custom file
touch "$DEPLOY_DIR/custom.el"

echo "Emacs Config Files Were Succefully Deployed in $DEPLOY_DIR"
