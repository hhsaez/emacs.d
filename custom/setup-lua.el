(defun my-lua-mode-hook ()
  (setq lua-indent-level 4)

  (setq tab-width 4)
  (setq indent-tabs-mode t)
)

(add-hook 'lua-mode-hook 'my-lua-mode-hook)

(provide 'setup-lua)

