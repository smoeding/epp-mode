# Major mode for EPP templates

This Emacs major mode can be used to edit Embedded Puppet (EPP) templates.  This minimalist mode only uses a single face to emphasize the template code between `<%` and `%>`. That's it.

# Usage

Copy `epp-mode.el` into a directory included in your `load-path`. Optionally you can byte-compile the file.  Add the following code to your init file to use this mode for all files with the `epp` file extension.

``` emacs-lisp
(require 'epp-mode)
(add-to-list 'auto-mode-alist '("\\.epp\\'" . epp-mode))
```
