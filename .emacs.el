;; -*- lexical-binding: t; -*-
;; vim is bettern

(tool-bar-mode 0)
(setq ring-bell-function 'ignore)
;; (load-theme 'deeper-blue t)

;; key bindings
;; (keymap-global-set "C-=" 'text-scale-increase) ;; C-x c-= does the samee

;; notes
;; use c-x c-m-{0,+,=,-} for global text scale
;; take a look at icomplete-mode

;; Display/Text Display
(setq-default tab-width 4)
(setq auto-save-default nil)
(setq make-backup-files nil)

;; experimental
(global-completion-preview-mode t)
(add-hook 'completion-preview-mode-hook
 		  (lambda ()
 			(keymap-set completion-preview-active-mode-map "M-n" 'completion-preview-next-candidate)
 			(keymap-set completion-preview-active-mode-map "M-p" 'completion-preview-prev-candidate)))

(when (eq system-type 'windows-nt)
  ;; disable gpg in win32
  (setq package-check-signature nil)
  (set-face-attribute 'default nil :family "Consolas" :height 110)
  ;; (set-face-attribute 'variable-pitch nil :family "Segoe UI")
  )

(setq speedbar-prefer-window t)
;; quiet https://github.com/vim/colorschemes/blob/master/colortemplate/quiet.colortemplate
(deftheme quiet)
(let ((fg "#dadada")
	  (bg "#181818")
	  (amber "#ffaf00")
	  (invis "#a8a8a8")
	  (dark8 "#707070")
	  (moblu "#5688af")
	  (burl4 "#8b7355")
	  )
(custom-theme-set-faces
 'quiet
 `(default ((t (:foreground ,fg :background ,bg))))
 `(isearch ((t (:foreground ,bg :background ,amber))))
 `(region ((t (:foreground ,bg :background ,amber))))
 `(mode-line-active ((t (:foreground ,invis :background "#2c2c2c" :weight bold)))) ;; TODO
 `(mode-line-inactive ((t (:foreground "#636363" :background "#222222" :weight normal))))
 `(vertical-border ((t (:foreground ,dark8 :background ,bg)))) ;; scroll-bar-mode

 ;; syntax groups
 `(elisp-shorthand-font-lock-face ((t (:inherit default))))
 `(font-lock-builtin-face ((t (:inherit default))))
 `(font-lock-comment-face  ((t (:foreground ,dark8 :weight bold))))
 `(font-lock-constant-face ((t (:inherit default))))
 `(font-lock-function-name-face ((t (:inherit default))))
 `(font-lock-keyword-face ((t (:inherit default))))
 `(font-lock-property-name-face ((t (:inherit default))))
 `(font-lock-string-face ((t (:foreground ,moblu))))
 `(font-lock-type-face ((t (:foreground ,burl4))))
 `(font-lock-variable-name-face ((t (:inherit default))))
 )
)
(provide-theme 'quiet)
(enable-theme 'quiet)

;; global overrides
(set-face-background 'fringe (face-background 'default nil t))

(setq fancy-splash-image
      (expand-file-name "images/icons/hicolor/128x128/apps/emacs.png" data-directory))
