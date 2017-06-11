# Betty on Emacs

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
check the [Quickstart](http://www.flycheck.org/en/latest/user/quickstart.html) page.

## Other features

- Flycheck by default provide syntax check for shell scripts via [Shellcheck](https://github.com/koalaman/shellcheck)  
and more than 40 different programming languages  
To enable Shellcheck or any of the other 41 syntax checkers(linters) you just  
need to install the respective executable system-wide.  
More information [here](http://www.flycheck.org/en/latest/languages.html)

- The `gcc` flycheck checker by default checks for the `-Wall` and `-Wextra` flags  
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
