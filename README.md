## CIDER Buddy

```cider-buddy``` provides helper utilities for CIDER AKA the Emacs Clojure(script) Interactive Development Environment that Rocks.

CIDER is an amazing package that makes it easy to write Clojure and Clojurescript in Emacs.  Unfortunately, many of the shortcuts it provides are hard to memorize and discover.  ```cider-buddy``` provides some useful menus that organize all the commands that CIDER provides.

It's a WIP but currently there are menus for all the CIDER commands that are bound to a shortcut by default.  This includes evaluation, documentation, testing, and other commands.

### Installation

Before installing ```cider-buddy```, you must install  ```hydra``` since ```cider-buddy``` uses ```hydra``` for its menus.  ```hydra``` is available on the ELPA and MELPA repositories, so you can install it by typing ```M-x package-install RET hydra RET```.  If you don't see it in the package list then you may have it installed already.

Next, install ```cider-buddy``` by placing ```cider-buddy.el``` in your Emacs library directory then add the following to your init file:

```
(load-file "path/to/cider-buddy.el")

(require 'cider-buddy.el)
```

Use the following shortcuts to open the menus when ```cider-mode``` is activated:

<kbd>C-c b e</kbd> - Menu for CIDER evaluation commands

<kbd>C-c b d</kbd> - Menu for CIDER documentation commands

<kbd>C-c b t</kbd> - Menu for CIDER testing commands

<kbd>C-c b o</kbd> - Menu for other CIDER commands
