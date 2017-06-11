#!/usr/bin/env bash
# Uses GNU Stow to install the files in the proper folder allowing easy
# install(stow) and uninstall(unstow) of symlinks to this source controlled repo

target=~/

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

stow betty -t $target -vvv

echo "All set!"
exit
