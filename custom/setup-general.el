
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

(provide 'setup-general)

