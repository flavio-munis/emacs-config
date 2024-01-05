;; Sets Package Manager as Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;; Sets the path to custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Use-package configurations
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Sets config.org as the configuration file for emacs
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
