(use-package doom-themes
  :ensure t
  :config
  (load-theme `doom-one))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

;; Requires runnning alt-x all-the-icons-install-fonts
(use-package all-the-icons
  :ensure t)

(provide 'setup-themes)
