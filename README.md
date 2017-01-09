dotfiles
--------

A collection of my dotfiles. Organized within packages and intended for use with the `stow` command.

> GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

## Usage

Install the `git` and `stow` commands, and clone the `dotfiles` repository.

~~~
$ apt install git stow
$ git clone https://github.com/hastebrot/dotfiles
~~~

Symlink files within a `PACKAGE` into `~` (the user home directory).

~~~
$ stow --target=~ [PACKAGE]
~~~

## Packages

- `fish`
- `git`
- `idea`
- `ranger`
- `tmux`
- `vim`
- `vscode`
