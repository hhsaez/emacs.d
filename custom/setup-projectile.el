(unless (package-installed-p 'projectile)
  (package-install 'projectile))

;; Package: projectile
(use-package projectile
  :diminish
  :init
  (setq projectile-keymap-prefix (kbd "C-c p"))
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t))

(provide 'setup-projectile)

