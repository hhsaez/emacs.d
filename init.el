(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("c:/Users/hsaez/Dropbox/.org-roam/20240722094008-habitos.org" "c:/Users/hsaez/Dropbox/.org-roam/20240721184245-24w30.org" "c:/Users/hsaez/Dropbox/.org-roam/20240714082639-24w29.org"))
 '(warning-suppress-types '((emacs) (emacs) (emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t :background "SystemWindow")))
 '(header-line ((t :box (:line-width 4 :color "grey90" :style nil))))
 '(header-line-highlight ((t :box (:color "SystemWindowText"))))
 '(keycast-key ((t)))
 '(line-number ((t :background "SystemWindow")))
 '(mode-line ((t :box (:line-width 6 :color "grey75" :style nil))))
 '(mode-line-active ((t :box (:line-width 6 :color "grey75" :style nil))))
 '(mode-line-highlight ((t :box (:color "SystemWindowText"))))
 '(mode-line-inactive ((t :box (:line-width 6 :color "grey90" :style nil))))
 '(tab-bar-tab ((t :box (:line-width 4 :color "systembuttonface" :style nil))))
 '(tab-bar-tab-inactive ((t :box (:line-width 4 :color "grey75" :style nil))))
 '(window-divider ((t :background "SystemWindow" :foreground "SystemWindow")))
 '(window-divider-first-pixel ((t :background "SystemWindow" :foreground "SystemWindow")))
 '(window-divider-last-pixel ((t :background "SystemWindow" :foreground "SystemWindow"))))
