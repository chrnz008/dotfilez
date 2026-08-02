;; vim is bettern

(tool-bar-mode 0)
(load-theme 'deeper-blue t)

;; faces
(set-face-background 'fringe "background at point")
;; (set-face-background 'mode-line "background at point")
;; (set-face-foreground 'mode-line "foreground at point")

;; key bindings
;; (keymap-global-set "C-=" 'text-scale-increase) ;; C-x c-= does the samee

;; notes
;; use c-x c-m-{0,+,=,-} for global text scale
;; take a look at icomplete-mode

;; Display/Text Display
(setq-default tab-width 4)
(setq auto-save-default nil)
(setq make-backup-files nil)

(when (eq system-type 'windows-nt)
  ;; disable gpg in win32
  (setq package-check-signature nil)
  (set-face-attribute 'default nil :family "Consolas" :height 110)
  )
