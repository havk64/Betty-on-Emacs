#!/usr/bin/env bash
# Uses GNU Stow to install the files in the proper folder allowing easy
# install(stow) and uninstall(unstow) of symlinks to this source controlled repo
# shellcheck disable=SC2015

# The variable script_dir allow this script to be called from other directories
target=~/
script_dir="$(pwd)/$(dirname $BASH_SOURCE)"

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

# The call for Stow uses the script's directory as "Stow directory" and the home
# directory as the "Target". For more info take a look at "Stow terminology"
# at: https://www.gnu.org/software/stow/manual/html_node/Terminology.html
stow -d "$script_dir" -t $target -S betty -vvv

echo "All set!"
exit
