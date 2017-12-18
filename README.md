# README

`.emacs.d` folder, heavily inspired by:

https://github.com/borlum/emacs.d

## Quickstart

Clone the repository:

```
$ cd ~/Projects
$ git clone https://github.com/robertoaloi/emacs.d
```

Then add  to your `.emacs` file:

```
(setq pigeon-root "/path/to/the/emacs.d/repo")
(load (concat pigeon-root "init.el"))
```

## Features

My emacs.d configuration is split in modules.

For each module follows a description of the major features provided
and possible customization.

### General

This module contains my Emacs customization which are not specific to
any programming mode.

* Store backup files in a common place (~/.emacs-backups)
* Inhibit tabs
* Set `tab-width` to two spaces
* Show trailing whitespaces
* Highlight lines longer than 80 characters
* Highlight current line
* Save history between sessions
* Enable editing of remote files (via TRAMP)
* Set default browser

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
* Cut and paste using the clipboard
* Show line numbers

### Erlang

* Activate official erlang-mode
* Activate EDTS (Erlang Development Tool Suite)
* Open documentation for erlang modules in a web browser

### Erlang QuickCheck

* Setup Emacs Mode for EQC

### Git

* Blame author of a specific line

### IDO

* Activate IDO-mode (Interactively Do Things)
* Activate IDO-mode for M-x (old M-x available as C-c C-c M-x)

### Jabber

* Activate official Jabber client
* Do not show avatars in Jabber roster
* Simplify Jabber roster

### Python

* Install python-mode
* Activate flymake for python-mode (using pyflakes)

### Markdown

* Enable spell-checking via `ispell` and `flyspell-mode` (requires the
  `ispell` OS package to be installed).`
* Specify justification using `M-x set-justification-*`
* Run spell-checker using `M-x ispell`

## Author

Roberto Aloi (@robertoaloi)
