#!/usr/bin/env bash
# Install betty-style as a C syntax checker on the fly, for Emacs

set -ex
cp .emacs ~/
[ ! -d ~/.emacs.d ] && mkdir -p ~/.emacs.d
cp -r ../betty/.emacs.d/private ~/.emacs.d
