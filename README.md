## CIDER Buddy

```cider-buddy``` provides helper utilities for CIDER AKA the Emacs Clojure(script) Interactive Development Environment that Rocks.

CIDER is an amazing package that makes it easy to write Clojure and Clojurescript in Emacs.  Unfortunately, many of the shortcuts it provides are hard to memorize and discover.  ```cider-buddy``` provides some useful menus that organize all the commands that CIDER provides.  In the future, I would like to include more helpful CIDER commands in this configuration.

### Installation

Before installing ```cider-buddy```, you must install  ```hydra``` since ```cider-buddy``` uses ```hydra``` for its menus.  ```hydra``` is available on the ELPA and MELPA repositories, so you can install it by typing ```M-x package-install RET hydra RET```.  If you don't see it in the package list then you may have it installed already.

Next, install ```cider-buddy``` by placing ```cider-buddy.el``` in your Emacs library directory then add the following to your init file:

```
(load-file "path/to/cider-buddy.el")

(require 'cider-buddy.el)
```

### Usage

The only command you need to remember is ```C-c b m```.  Use that shortcut when cider-mode is on and it will open a menu that lets you navigate to any ```cider-buddy``` menu.

See below for a listing of every ```cider-buddy``` menu and its shortcut:

<kbd>C-c b m</kbd> - Menu navigator

<kbd>C-c b b</kbd> - Menu for buffer commands

<kbd>C-c b c</kbd> - Menu for connection/nREPL commands

<kbd>C-c b d</kbd> - Menu for debugging commands

<kbd>C-c b D</kbd> - Menu for documentation commands

<kbd>C-c b e</kbd> - Menu for environment commands (apropos, find-ns, etc...)

<kbd>C-c b E</kbd> - Menu for evaluation commands

<kbd>C-c b f</kbd> - Menu for buffer formatting commands

<kbd>C-c b h</kbd> - Menu for help commands

<kbd>C-c b i</kbd> - Menu for insertion commands

<kbd>C-c b I</kbd> - Menu for inspection commands

<kbd>C-c b p</kbd> - Menu for popup buffer commands

<kbd>C-c b r</kbd> - Menu for REPL commands (1)

<kbd>C-c b R</kbd> - Menu for REPL commands (2)

<kbd>C-c b s</kbd> - Menu for stacktrace commands

<kbd>C-c b t</kbd> - Menu for testing commands

<kbd>C-c b T</kbd> - Menu for tracing commands
