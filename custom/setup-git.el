(unless (package-installed-p 'git)
  (package-install 'git))

(require 'git)

(unless (package-installed-p 'magit)
  (package-install 'magit))

(require 'magit)

(provide 'setup-git)
