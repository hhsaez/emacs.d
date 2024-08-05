;; Keep user customization to a different file, which can be git-ignored
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
