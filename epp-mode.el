;;; epp-mode.el --- Major mode for EPP templates     -*- lexical-binding: t; -*-
;;
;; Filename:    epp-mode.el
;; Description: A major mode for EPP templates
;; Author:      Stefan Möding
;; Maintainer:  Stefan Möding
;; Version:     1.0
;; Created:     <2022-01-18 17:20:50 stm>
;; Updated:     <2022-12-17 16:12:19 stm>
;; Keywords:
;;
;; Copyright (c) 2022 Stefan Möding
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;; 1. Redistributions of source code must retain the above copyright
;;    notice, this list of conditions and the following disclaimer.
;; 2. Redistributions in binary form must reproduce the above
;;    copyright notice, this list of conditions and the following
;;    disclaimer in the documentation and/or other materials provided
;;    with the distribution.
;;
;; THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS''
;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
;; TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
;; PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR
;; CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
;; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
;; USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
;; ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
;; OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
;; OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;; SUCH DAMAGE.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; Commands defined here:
;;
;; User options defined here:
;;
;; Non-interactive functions defined here:
;;
;; Internal variables defined here:
;;
;; Put this in your init file (e.g. `~/.emacs.d/init.el'):
;;
;;  (require 'epp-mode)
;;  (add-to-list 'auto-mode-alist '("\\.epp\\'" . epp-mode))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;; 2022-01-18 stm
;;     Initial version.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(defvar epp-mode-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?< ". 1" table)
    (modify-syntax-entry ?> ". 4" table)
    (modify-syntax-entry ?% ". 23" table)
    table)
  "Syntax table used in `epp-mode' buffers.")

(defvar epp-mode-map
  (let ((map (make-sparse-keymap)))
    map))

(define-derived-mode epp-mode fundamental-mode "EPP"
  "Major mode for editing Embedded Puppet (EPP) templates.

\\{epp-mode-map}"

  ;; Font lock
  (setq-local font-lock-defaults '(nil))

  ;; Comments
  (setq-local comment-column 0)
  (setq-local comment-start "<%#")
  (setq-local comment-end "%>"))

(provide 'epp-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; epp-mode.el ends here
