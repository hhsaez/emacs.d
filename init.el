;; Gets rid of undefined variables
(setq byte-compile-warnings '(not free-vars ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(beacon-color "#f1fa8c" t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" default)))
 '(dashboard-center-content t t)
 '(dashboard-items (quote ((recents . 15) (projects . 5) (bookmarks . 5))) t)
 '(dashboard-startup-banner 3 t)
 '(exec-path-from-shell-check-startup-files nil)
 '(exec-path-from-shell-variables (quote ("PATH" "GOPATH")))
 '(inhibit-startup-screen t)
 '(minimap-automatically-delete-window nil)
 '(minimap-minimum-width 20 nil nil "Customized with use-package minimap")
 '(minimap-update-delay 0.2 nil nil "Customized with use-package minimap")
 '(minimap-width-fraction 0.05 nil nil "Customized with use-package minimap")
 '(minimap-window-location (quote right) nil nil "Customized with use-package minimap")
 '(package-selected-packages
   (quote
    (doom-modeline doom-themes treemacs glsl-mode dashboard beacon dimmer posframe rtags lua-mode projectile fuzzy helm-projectile helm-swoop helm json-mode git-blame git auto-complete company-c-headers use-package company-irony-c-headers company-lua company sr-speedbar)))
 '(recentf-auto-cleanup (quote never) t)
 '(recentf-exclude
   (quote
    ((expand-file-name package-user-dir)
     ".cache" "cache" "recentf" "COMMIT_EDITMSG\\'")) t)
 '(recentf-max-saved-items 20000000 t)
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dashboard-heading ((t (:foreground "#f1fa8c" :weight bold))))
 '(minimap-active-region-background ((((background dark)) (:background "#555555555555")) (t (:background "#C847D8FEFFFF"))) nil (quote minimap)))

;; Configure MELPA
(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "http://melpa.milkbox.net/packages/") t)

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

;; Disable backup files
(setq make-backup-files nil)

;; Enable fuzzy search for files using C-x C-f
;; (require 'ido)
;; (ido-mode t)
;; (setq ido-enable-flex-matching t)

;; Enable line numbers
(global-linum-mode t)

;; Start maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Start with split window
;;(split-window-horizontally)

;; Indent with spaces
(setq-default indent-tabs-mode nil)

(set-face-attribute 'default nil :height 130)
