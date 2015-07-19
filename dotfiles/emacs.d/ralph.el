;; Add our vendor packages to the load list.  This is here for packages that
;; could not be loaded by Cask.
(add-to-list 'load-path "~/.emacs.d/vendor")

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(load "ralph/defuns")
(load "ralph/global")
(load "ralph/packages")

;; General modes
(load "ralph/smooth-scroll")
(load "ralph/powerline")
(load "ralph/fill-column-indicator")
;; (load "ralph/git-gutter")  ;; Emacs keeps seg faulting when I have this turned on with the pyflakes script...
(load "ralph/neotree")

;; Python mode
(load "vendor/emacs-for-python/epy-init.el")

;; Web modes
(load "ralph/js")
(load "ralph/js2-mode")
(load "ralph/web-mode")
(load "ralph/css-mode")

;; Other modes
(load "ralph/markdown-mode")
(load "ralph/yaml-mode")
(load "ralph/dockerfile-mode")

;;Disable back up files i.e. files ending in ~
(setq make-backup-files nil)

;; Turn on ipython when using python shell.
(epy-setup-ipython)

;; Anything private goes in this file, which is not in the repo
;; (load "ralph/private.el")
