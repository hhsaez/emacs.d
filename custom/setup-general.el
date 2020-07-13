
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time    
;; x(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; Horizontal scrolling
(global-set-key [wheel-right] '(lambda ()
								 (interactive)
								 (scroll-left 8)))
(global-set-key [wheel-left] '(lambda ()
								(interactive)
								(scroll-right 8)))
(put 'scroll-left 'disabled nil)
(put 'scroll-right 'disabled nil)
(setq
 hscroll-step 1
 scroll-conservatively 1000)

;; Compilation output
(setq compilation-scroll-output t)

(setq auto-window-vscroll nil)

;; Delete selection when inserting
(use-package delsel
  :hook (after-init . delete-selection-mode))

;; Automatically reload files if they're modified by an external program
(use-package autorevert
  :diminish
  :hook (after-init . global-auto-revert-mode))

;; Posframe (for buffer pop-ups)
(use-package posframe)

;; Dimmer (for dimming inactive buffers)
(use-package dimmer
  :disabled
  :custom
  (dimmer-fraction 0.5)
  (dimmer-exclusion-regexp-list
   '(".*Minibuf.*"
	 ".*which-key.*"
	 ".*NeoTree.*"
	 ".*Messages.*"
	 ".*Async.*"
	 ".*Warnings.*"
	 ".*LV.*"
	 ".*Ilist.*"))
  :config
  (dimmer-mode t))

;; Cursor highlight
(use-package beacon
  :custom
  (beacon-color "#f1fa8c")
  :hook (after-init . beacon-mode))

;; Disable scrollbars
(toggle-scroll-bar nil)

;; Split windows in Emacs 22 compatible way
(setq split-height-threshold nil)
(setq split-width-threshold most-positive-fixnum)

;; Trim whitespaces before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'setup-general)

