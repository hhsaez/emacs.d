(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))

(use-package auto-complete
  :ensure t
  :demand
  :config
  (ac-config-default)
  (ac-flyspell-workaround)
  (use-package fuzzy
	:ensure t
	:config
	(setq ac-fuzzy-enable 1)
	)
  )

(setq ac-auto-start 4)

(provide 'setup-autocomplete)

