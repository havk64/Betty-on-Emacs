# Betty on Emacs

A Flycheck syntax checker that implements Holberton School Betty-Style as an  
Emacs extension, providing C style syntax checking On the Fly.

More information on: [Betty repository](https://github.com/holbertonschool/Betty)

![betty-style as emacs syntax checker](img/betty.png?raw-true)

## Requirements:

- [Betty executable](https://github.com/holbertonschool/Betty)
- Emacs 24.3+ (for [Flycheck](http://www.flycheck.org/en/latest/))
- [Flycheck](http://www.flycheck.org/en/latest/user/installation.html)
- Linux or OsX (for the install script)

## Try it before install

Clone this repository, `cd` to `Betty-On-Emacs` directory and run the script `try_it_first.sh`  
That's it!

This script will run an instance of Emacs in an isolated environment using this
repo as the Emacs home directory and load the configuration from the [.emacs](.emacs) config file where 
everything is already set for you. ;-)

You can indeed use the [`.emacs`](.emacs) file as reference to implement your own configuration.

## Install instructions

[Flycheck](http://www.flycheck.org/en/latest/) is available through [MELPA](c) the Emacs Lisp Package Archive.  
If not already installed on your system follow the [Installation instructions](http://www.flycheck.org/en/latest/user/installation.html)  
that consists basically of the addition 3 lines of lisp code to your `.emacs`  
config file.

 1. Clone this repo somewhere in your system and run the `install.sh` script:

        $ git clone git@github.com:havk64/Betty-on-Emacs.git

	    $ cd Betty-on-Emacs

	    $ ./install.sh

    The script `install.sh` uses [GNU Stow](https://www.gnu.org/software/stow/) which is a tool for managing the  
    installation of multiple software packages in the same run-time directory tree,  
    thus, a reliable and secure tool to manage dotfiles too.

    Running the `install.sh` script will create symlinks in the `~/.emacs.d`  
    directory pointing to the files in this repo. Hence you don't need to copy or  
    update them locally/manually if they get updated.

2. Add this two lines to your Emacs config file `~/.emacs`:

        (load "~/.emacs.d/private/Betty/betty-style")
        (add-to-list 'flycheck-checkers 'betty-style)
	
    The first line loads the byte-compiled version of the lisp source code and the  
    second add `betty-style` to the list of available `flycheck-checkers` enabling it.

## Usage

For a brief introduction into Flycheck and overview of most important features  
check the [Quickstart](http://www.flycheck.org/en/latest/user/quickstart.html) page.

## Bonus features

- **CFLAGS**:  
The `gcc` flycheck checker by default checks for the `-Wall` and `-Wextra` flags  
by means of the variable `flycheck-gcc-warnings` which should have the value:  
`("all" "extra")`.  
You can also add the flag pedantic by customizing the variable  
`flycheck-gcc-pedantic` to `true` and add the flag `-Werror` to the list  
like this:

        (setq flycheck-gcc-pedantic t)
		(setq flycheck-gcc-warnings '("all" "extra" "error"))

	 to have the flags `-Wall -Werror -Wextra -pedantic` checked on the fly.

    *Note*: to check the value of a variable on Emacs execute:

	<kbd>Ctrl-h v</kbd> name-of-variable <kbd>RET</kbd>

- **ShellCheck**:  
Flycheck by default provide syntax check for shell scripts via [Shellcheck](https://github.com/koalaman/shellcheck)  
and more than 40 different programming languages  
To enable Shellcheck or any of the other syntax checkers(linters) you just  
need to install the respective executable system-wide.  
More information [here](http://www.flycheck.org/en/latest/languages.html)

