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
$ stow -t ~/ vim
~~~

## Packages

- `fish`
- `git`
- `idea`
- `ranger`
- `tmux`
- `vim`
- `vscode`

## Additional

Nvim: Link to previous vim configuration.

~~~
$ mkdir -p ~/.config
$ ln -s ~/.vim ~/.config/nvim
$ ln -s ~/.vimrc ~/.config/nvim/init.vim
~~~

via: https://github.com/neovim/neovim/blob/v0.1.1/runtime/doc/nvim_from_vim.txt#L12-L18

Nvim: List pathogen bundle directory:

~~~
$ ls -1 ~/.vim/bundle
bubblegum
ctrlp.vim
dart-vim-plugin
deoplete.nvim
elm-vim
jellybeans.vim
kotlin-vim
nerdtree
paredit.vim
rust.vim
space-vim-dark
supertab
SyntaxRange
targets.vim
vim-airline
vim-airline-themes
vim-crystal
vim-easymotion
vim-emoji
vim-fireplace
vim-fugitive
vim-gitgutter
vim-monokai
VimRegStyle
vim-salve
vim-scala
vim-surround
vim-tomorrow-theme
vimwiki
~~~

