#!/usr/bin/env bash
# Uses GNU Stow to install the files in the proper folder allowing easy
# install(stow) and uninstall(unstow) of symlinks to this source controlled repo

targer=~/

# Installs GNU Stow if not installed(just 200kb)
which stow || sudo apt-get -y install stow

stow betty -t $target -vvv

