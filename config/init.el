;; Sets Package Manager as Melpa and Elpa  -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))

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

(use-package highlight-indent-guides
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-auto-enabled t))

;; Sets config.org as the configuration file for emacs
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

;; Ewal File watcher (Comment out if ewal theme not available)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'ewal-auto-update)
(my/start-ewal-auto-update)
