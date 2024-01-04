;; Sets Package Manager as Melpa
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Checks if use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Sets config.org as the configuration file for emacs
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
