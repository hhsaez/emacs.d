;; Configure line truncate
(setq-default truncate-lines t)

(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode t)

(defun my-c-mode-common-hook ()
  (progn
    (c-add-style "mine" '("stroustrup"
			  (c-offsets-alist
			   (substatement-open . 0)
			   (statement-cont . 0)
			   (innamespace . +)
			   (inline-open . 0)
			   (inlambda . 0)
			   (inher-cont . c-lineup-multi-inher)
			   (arglist-intro . +)
			   (arglist-cont-nonempty . 0)
			   (arglist-close . 0)
			   (case-label . +)
			   (template-args-cont . 0))))
    (setq c-default-style "mine")
    (c-set-style "mine"))
  
  ;; disable indentation
  ;; (setq c-syntactic-indentation nil)
  
  ;; (setq c++-tab-always-indent t)
  ;; (setq c-indent-level 4)
  
  ;; (setq tab-width 4)
  ;; (setq indent-tabs-mode t)))
  )

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defun my-compilation-mode-hook ()
  (setq truncate-lines nil) ;; automatically becomes buffer local
  (set (make-local-variable 'truncate-partial-width-windows) nil))
(add-hook 'compilation-mode-hook 'my-compilation-mode-hook)

(provide 'setup-c)

