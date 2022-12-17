# Major mode for EPP templates

This Emacs major mode can be used to edit Embedded Puppet (EPP) templates.
Currently only a simple font-lock is implemented.

# Usage

Copy `epp-mode.el` into a directory included in your `load-path`. Optionally you can byte-compile the file.  Add the following code to your init file to use this mode for all files with the `epp` file extension.

``` emacs-lisp
(require 'epp-mode)
(add-to-list 'auto-mode-alist '("\\.epp\\'" . epp-mode))
```
