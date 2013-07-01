(add-to-list 'load-path "~/.emacs.d/vendor")

(load "ralph/defuns")
(load "ralph/global")
(load "ralph/packages")

;;General
(vendor 'fill-column-indicator)
(vendor 'findr)

;;Python related
;;(vendor 'emacs-for-python)

;; (load "ralph/private.el")
