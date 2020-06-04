(unless (package-installed-p 'cmake-ide)
  (package-install 'cmake-ide))

(require 'rtags)
(cmake-ide-setup)

(provide 'setup-cmake-ide)

