;; Gets rid of undefined variables
(setq byte-compile-warnings '(not free-vars ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
	(glsl-mode dashboard beacon dimmer posframe rtags lua-mode projectile fuzzy helm-projectile helm-swoop helm json-mode git-blame git auto-complete company-c-headers use-package company-irony-c-headers company-lua company sr-speedbar)))
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

(set-face-attribute 'default nil :height 130)

