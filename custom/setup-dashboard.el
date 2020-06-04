;; History
(use-package saveplace
  :ensure t
  :hook (after-init . save-place-mode))

;; Recent Files
(use-package recentf
  :ensure t
  :hook (after-init . recentf-mode)
  :custom
  (recentf-max-saved-items 20000000)
  (recentf-auto-cleanup 'never)
  (recentf-exclude '((expand-file-name package-user-dir)
					 ".cache"
					 "cache"
					 "recentf"
					 "COMMIT_EDITMSG\\'"))
  :preface
  (defun hhsaez/recentf-save-list-silence ()
	(interactive)
	(let ((message-log-max nil))
	  (if (fboundp 'shut-up)
		  (shut-up (recentf-save-list))
		(recentf-save-list)))
	(message ""))
  (defun hhsaez/recentf-cleanup-silence ()
	(interactive)
	(let ((message-log-max nil))
	  (if shutup-p
		  (shutup-p (recentf-cleanup))
		(recentf-cleanup)))
	(message ""))
  :hook
  (focus-out-hook . (hhsaez/recentf-save-list-silence hhsaez/recentf-cleanup-silence)))

;; Dashboard
(use-package dashboard
  :diminish
  (dashboard-mode page-break-lines-mode)
  :custom
  (dashboard-center-content t)
  (dashboard-startup-banner 3)
  (dashboard-items '((recents . 15)
					 (projects . 5)
					 (bookmarks . 5)))
  :custom-face
  (dashboard-heading ((t (:foreground "#f1fa8c" :weight bold))))
  :hook
  (after-init . dashboard-setup-startup-hook))

(provide 'setup-dashboard)

