
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(load "ralph/defuns")
(load "ralph/global")
(load "ralph/packages")

;; General modes
(load "ralph/smooth-scroll")
(load "ralph/powerline")
(load "ralph/fill-column-indicator")
(load "ralph/git-gutter")

;; Python mode
(load "ralph/python-mode")
(load "ralph/python-pep8")
(load "ralph/python-pylint")
(load "ralph/virtualenv")

;;Disable back up files i.e. files ending in ~
(setq make-backup-files nil)

;; Anything private goes in this file, which is not in the repo
;; (load "ralph/private.el")
