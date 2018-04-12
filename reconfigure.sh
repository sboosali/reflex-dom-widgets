#!/bin/bash
set -e
########################################

cabal2nix .         > "reflex-dom-widgets-default.nix"
cabal2nix . --shell > "reflex-dom-widgets-shell.nix"

./provision.sh

########################################
#
# SHELL_FILE=shell-reflex-dom-widgets.nix
# cabal2nix . --shell > "$SHELL_FILE"
#
# if [ ! -f "$SHELL_FILE" ]; then 
#   # don't overwrite if it already exists
#   cabal2nix . --shell > "$SHELL_FILE" 
# fi
#
