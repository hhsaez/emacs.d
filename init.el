;; Gets rid of undefined variables
(setq byte-compile-warnings '(not free-vars ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#f1fa8c" nil nil "Customized with use-package beacon")
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" default))
 '(dashboard-center-content t nil nil "Customized with use-package dashboard")
 '(dashboard-items '((recents . 15) (projects . 5) (bookmarks . 5)) nil nil "Customized with use-package dashboard")
 '(dashboard-startup-banner 3 nil nil "Customized with use-package dashboard")
 '(exec-path-from-shell-check-startup-files nil nil nil "Customized with use-package exec-path-from-shell")
 '(exec-path-from-shell-variables '("PATH" "GOPATH") nil nil "Customized with use-package exec-path-from-shell")
 '(fci-rule-color "#5B6268")
 '(inhibit-startup-screen t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(minimap-automatically-delete-window nil nil nil "Customized with use-package minimap")
 '(minimap-minimum-width 20 nil nil "Customized with use-package minimap")
 '(minimap-update-delay 0.2 nil nil "Customized with use-package minimap")
 '(minimap-width-fraction 0.05 nil nil "Customized with use-package minimap")
 '(minimap-window-location 'right nil nil "Customized with use-package minimap")
 '(objed-cursor-color "#ff6c6b")
 '(package-selected-packages
   '(writeroom-mode whiteroom-mode treemacs-magit clang-format doom-modeline doom-themes treemacs glsl-mode dashboard beacon dimmer posframe rtags lua-mode projectile fuzzy helm-projectile helm-swoop helm json-mode git-blame git auto-complete company-c-headers use-package company-irony-c-headers company-lua company sr-speedbar))
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(recentf-auto-cleanup 'never nil nil "Customized with use-package recentf")
 '(recentf-exclude
   '((expand-file-name package-user-dir)
     ".cache" "cache" "recentf" "COMMIT_EDITMSG\\'") t nil "Customized with use-package recentf")
 '(recentf-max-saved-items 20000000 nil nil "Customized with use-package recentf")
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(tool-bar-mode nil)
 '(transient-mark-mode '(only . t))
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dashboard-heading ((t (:foreground "#f1fa8c" :weight bold))))
 '(minimap-active-region-background ((((background dark)) (:background "#555555555555")) (t (:background "#C847D8FEFFFF"))) nil 'minimap))

;; Configure MELPA
(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "http://melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

;; Configure use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (package-install 'diminish))

(require 'use-package)
(setq use-package-always-ensure t)

;; Configure gdb command
(setq gdb-command-name "lldb")

;; add your modules path
(add-to-list 'load-path "~/.emacs.d/custom/")

;; load custom scripts
(require 'setup-general)
(require 'setup-os)
(require 'setup-autocomplete)
(require 'setup-projectile)
(require 'setup-c)
(require 'setup-lua)
(require 'setup-speedbar)
(require 'setup-git)
(require 'setup-helm)
(require 'setup-minimap)
(require 'setup-dashboard)
(require 'setup-glsl)
;; (require 'setup-rtags)
;; (require 'setup-cmake-ide)
(require 'setup-treemacs)
(require 'setup-themes)
(require 'setup-clang-format)
(require 'setup-zen)

;; Disable backup files
(setq make-backup-files nil)

;; Enable fuzzy search for files using C-x C-f
;; (require 'ido)
;; (ido-mode t)
;; (setq ido-enable-flex-matching t)

;; Enable line numbers
(global-linum-mode 0)

;; Start maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Start with split window
;;(split-window-horizontally)

;; Indent with spaces
(setq-default indent-tabs-mode nil)

(set-face-attribute 'default nil :height 120)
