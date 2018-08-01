(unless (package-installed-p 'sr-speedbar)
  (package-install 'sr-speedbar))

(use-package speedbar
  :config
  (progn
    ;;(set-variable 'speedbar-use-images nil)
    (speedbar-add-supported-extension ".rst")))

(use-package sr-speedbar
  :ensure t
  :init
  (set-variable 'speedbar-show-unknown-files t)
  ;;(set-variable 'sr-speedbar-auto-refresh nil)
  (set-variable 'sr-speedbar-right-side nil))

(provide 'setup-speedbar)

