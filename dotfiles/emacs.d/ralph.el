(add-to-list 'load-path "~/.emacs.d/vendor")

(load "ralph/defuns")
(load "ralph/global")
(load "ralph/packages")

;;Load Python related
(load "vendor/emacs-for-python/epy-init.el")

;;General
(vendor 'fill-column-indicator)
(vendor 'findr)

;;Disable back up files i.e. files ending in ~
(setq make-backup-files nil)

;; (load "ralph/private.el")
