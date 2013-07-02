;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; save position in files
(setq-default save-place t)

;; Display line and column numbers
(line-number-mode 1) 
(column-number-mode 1)

;; Turn off tool-bar-mode
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Small fringes
(set-fringe-mode '(0 . 0))

;; Add line numbers to file on left side with a space and pipe between them.
(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)

;; Emacs gurus don't need no stinking scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Line-wrapping
(set-default 'fill-column 80)

;; Prevent the annoying beep on errors
(setq visible-bell nil)

;; Add proper word wrapping
;; (global-visual-line-mode t)

;; Make sure all backup and autosave files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; From https://github.com/antonj/.emacs.d/blob/master/aj-generic.el
(defvar autosave-dir "~/.emacs.d/autosave")
(make-directory autosave-dir t)

;; Gotta see matching parens
(show-paren-mode t)

;; Don't truncate lines
;;(setq-default truncate-lines t)
;;(setq truncate-partial-width-windows nil)

;; Desktop mode
(desktop-save-mode 1)

;; Disable control z
(global-unset-key "\C-z")
(global-unset-key "\C-x\C-z")

; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (whitespace-cleanup)))

;; Trash can support
(setq delete-by-moving-to-trash t)

;; Enable ido mode
;;(ido-mode t)
;;(setq ido-enable-flex-matching t)

(global-font-lock-mode 1)

;; Show keystrokes
(setq echo-keystrokes 0.1)

;; Never insert tabs
(set-default 'indent-tabs-mode nil)
