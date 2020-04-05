(unless (package-installed-p 'glsl-mode)
  (package-install 'glsl-mode))

(require 'glsl-mode)
(provide 'setup-glsl)
