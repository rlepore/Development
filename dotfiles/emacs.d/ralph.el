(add-to-list 'load-path "~/.emacs.d/vendor")

(load "ralph/defuns")
(load "ralph/global")
(load "ralph/packages")
;;(load "ralph/powerline")
(load "ralph/fill-column-indicator")

;;Load web modes
(load "ralph/web-mode")
(load "ralph/js")
(load "ralph/js2-mode")
(load "ralph/json-mode")
(load "ralph/jade-mode")

;;Load Python related
(load "vendor/emacs-for-python/epy-init.el")

;;General
(vendor 'fill-column-indicator)
(vendor 'powerline)
(vendor 'smooth-scroll)

;; Other Modes
(vendor 'css-mode)
(vendor 'js2-mode)
(vendor 'jade-mode)
(vendor 'json-mode)
(vendor 'web-mode)
(vendor 'rainbow-mode)

;;Disable back up files i.e. files ending in ~
(setq make-backup-files nil)

;; (load "ralph/private.el")
