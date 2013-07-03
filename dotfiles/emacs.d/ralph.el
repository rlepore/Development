(add-to-list 'load-path "~/.emacs.d/vendor")

(load "ralph/defuns")
(load "ralph/global")
(load "ralph/packages")

;;Load Python related
(load "vendor/emacs-for-python/epy-init.el")

;;General
(vendor 'fill-column-indicator)
(vendor 'findr)

;; (load "ralph/private.el")
