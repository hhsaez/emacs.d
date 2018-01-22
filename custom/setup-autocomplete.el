(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))

(ac-config-default)

(setq ac-auto-start 4)

(provide 'setup-autocomplete)

