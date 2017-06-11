# Betty-on-Emacs

A Flycheck syntax checker that implements Holberton School Betty-Style as an  
Emacs extension, providing C style syntax checking On the Fly.

More information on: [Betty repository](https://github.com/holbertonschool/Betty)

![betty-style as emacs syntax checker](img/betty.png?raw-true)

## Requirements:

- [Betty executable](https://github.com/holbertonschool/Betty)
- Emacs 24.3+ (for [Flycheck](http://www.flycheck.org/en/latest/))
- [Flycheck](http://www.flycheck.org/en/latest/user/installation.html)

## Install instructions

Besides [Betty executable](https://github.com/holbertonschool/Betty) the only requirement to install Betty-Style as syntax  
checker on Emacs is the package [Flycheck](http://www.flycheck.org/en/latest/) which is available through [MELPA](c).  
If not already installed on your system follow the [Installation instructions](http://www.flycheck.org/en/latest/user/installation.html)  
that consists basically of the addition 3 lines of lisp code to your `.emacs`  
config file.

The script `install.sh` uses [GNU Stow](https://www.gnu.org/software/stow/) which is a tool for managing the  
installation of multiple software packages in the same run-time directory tree,  
thus, a reliable and secure tool to manage packages or dotfiles.

Running the `install.sh` script will create symlinks in the `~/.emacs.d`  
directory pointing to the files in this repo. Hence you don't need to copy or  
update them locally/manually if they get updated.

Once the file/symlinks are in place you just need to add this two lines to your  
Emacs config:

    (load "~/.emacs.d/private/Betty/betty-style")
    (add-to-list 'flycheck-checkers 'betty-style)
	
The first line loads the byte-compiled version of the lisp source code and the  
second add `betty-style` to the list of available `flycheck-checkers`.

## Usage

For a brief introduction into Flycheck and overview of most important features  
check the [Quickstart](Flycheck usage) page.
