#!/usr/bin/env bash

set -eu;

if test ! -v GITPOD_REPO_ROOT; then {
    printf 'error: This script is meant to be run on Gitpod, quitting...\n' && exit 1;
} fi

SOURCE_DIR="$(readlink -f "$0")" && SOURCE_DIR="${SOURCE_DIR%/*}";

cat $SOURCE_DIR/.gitconfig >> $HOME/.gitconfig;
cat $SOURCE_DIR/.zshrc >> $HOME/.zshrc;
