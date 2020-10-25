(unless (package-installed-p 'clang-format)
  (package-install 'clang-format))

(use-package clang-format
  :ensure t
  :config
  (setq clang-format-style "file"))

(defun clang-format-buffer-smart ()
  "Reformat buffer if .clang-format exists in the projectile root."
  (when (f-exists? (expand-file-name ".clang-format" (projectile-project-root)))
    (clang-format-buffer)))

(defun clang-format-buffer-smart-on-save ()
  "Add auto-save hook for clang-format-buffer-smart."
  (add-hook 'before-save-hook 'clang-format-buffer-smart nil t))

;; Run this for each mode you want to use the hook.
(add-hook 'c-mode-hook (lambda () (clang-format-buffer-smart-on-save)))
(add-hook 'c++-mode-hook (lambda () (clang-format-buffer-smart-on-save)))
(add-hook 'glsl-mode-hook (lambda () (clang-format-buffer-smart-on-save)))

(provide `setup-clang-format)
