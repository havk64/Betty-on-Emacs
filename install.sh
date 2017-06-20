#!/usr/bin/env bash
# Uses GNU Stow to install the files in the proper folder allowing easy
# install(stow) and uninstall(unstow) of symlinks to this source controlled repo
# shellcheck disable=SC2015

target=~/

curr_dir="$(pwd)/$(dirname $BASH_SOURCE)"

# Check for Operating system to install Stow
install_stow() {
    case "$(uname -s)" in
        Darwin)
            brew install stow
            ;;
        Linux)
            sudo apt-get install -y stow
            ;;
        *)
            echo 'OS not supported yet'
            ;;
    esac
}

# Installs GNU Stow if not installed(just 200kb)
which stow && echo "Stow found at $(which stow)" || install_stow

stow -d "$curr_dir" -n -t $target -S betty -vvv

echo "All set!"
exit
