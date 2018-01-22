(unless (package-installed-p 'git)
  (package-install 'git))

(unless (package-installed-p 'git-blame)
  (package-install 'git-blame))

(require 'git)
(require 'git-blame)

(provide 'setup-git)

