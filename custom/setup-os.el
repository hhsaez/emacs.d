;; Include PATH in shell
(use-package exec-path-from-shell
  :custom
  (exec-path-from-shell-check-startup-files nil)
  (exec-path-from-shell-variables '("PATH" "GOPATH"))
  :config
  (when (memq window-system '(mac ns x))
	(exec-path-from-shell-initialize)))

;; MacOS
(when (equal system-type 'darwin)
  ;(setq mac-option-modifier 'super)
  ;(setq mac-command-modifier 'meta)
  (setq ns-auto-hide-menu-bar t)
  (setq ns-use-proxy-icon nil)
  (setq dired-use-ls-dired nil)
  (setq initial-frame-alist
		(append
		 '((ns-transparent-titlebar . t)
		   (ns-appearance .dark)
		   (vertical-scroll-bar . nil)
		   (internal-border-width . 0)))))

(use-package pbcopy
  :if (eq system-type 'darwin)
  :hook (dashboard-mode . (turn-on-pbcopy)))

(provide 'setup-os)

