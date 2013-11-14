# README

`.emacs.d` folder, heavily inspired by:

https://github.com/borlum/emacs.d

## Quickstart

Clone the repository:

```
$ cd /YOUR/FAVOURITE/PATH
$ git clone https://github.com/robertoaloi/emacs.d
```

Load the repository from your emacs configuration

```
$ echo '(load "/YOUR/FAVOURITE/PATH/emacs.d")' >> ~/.emacs
```

## Features

### General

* Store backup files in a common place (~/.emacs-backups)
* Inhibit tabs
* Set `tab-width` to two spaces
* Show trailing whitespaces
* Highlight lines longer than 80 characters
* Highlight current line
* Show line numbers

### Packages

* Use the MELPA packaging system
* Install a package only if it's not already installed

### UI

* Inhibit Splash Screen
* Inhibit Bell Sound
* Shortcuts to enlarge and shrink windows (C-S-<dir>)
* Answer `y/n` instead of `yes/no`
* Jump to other-window after splits (C-x 2, C-x 3)
* Inhibit menu, tool and scroll bars

## Author

Roberto Aloi (@robertoaloi)
