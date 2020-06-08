(use-package minimap
  :custom
  ;;(minimap-major-modes '(proj-mode))
  (minimap-window-location 'right)
  (minimap-update-delay 0.2)
  (minimap-minimum-width 20)
  (minimap-width-fraction 0.05)
  :config
  (custom-set-faces
   '(minimap-active-region-background
	 ((((background dark)) (:background "#555555555555"))
	  (t (:background "#C847D8FEFFFF"))) :group 'minimap))
  :hook (after-init . minimap-mode))

(provide 'setup-minimap)

