# README

`.emacs.d` folder, heavily inspired by:

https://github.com/borlum/emacs.d

## Quickstart

Clone the repository:

```
$ cd ~/Projects
$ git clone https://github.com/robertoaloi/emacs.d
```

Append the following to your `.emacs` file:

```
(setq pigeon-root "~/Projects/emacs.d/")
(setq pigeon-edts-root "~/Projects/edts/")
(setq pigeon-erlang-bin "/usr/local/Cellar/erlang/R16B/bin")
(setq pigeon-erlang-doc-root "~/docs/erlang/R16B/")
(setq pigeon-default-browser "google-chrome")
(load (concat pigeon-root "init.el"))
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

### Erlang

* Activate official erlang-mode
* Activate EDTS (Erlang Development Tool Suite)
* Open documentation for erlang modules in a web browser

### Git

* Blame author of a specific line

## Author

Roberto Aloi (@robertoaloi)
