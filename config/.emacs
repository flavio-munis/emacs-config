;;
;; Initial Definitions
;;

(package-initialize)

;; Loads Custom Functions File
(load "~/.emacs.rc/rc.el")

;;
;; Basic Definitions
;;

;; Stops Startup Message
(setq inhibit-splash-screen t)

;; Disable Menu Bar
(menu-bar-mode -1)

;; Disable Tools Bar
(tool-bar-mode -1)

;; Disable Scroll Bar
(scroll-bar-mode -1)

;; Enables Column Number Mode
(column-number-mode 1)

;; Enables CUA Mode
(cua-mode 1)

;; Set "GNU" Style Indenting For c
(setq c-default-style "linux"
      c-basic-offset 4)

;; Enable Eletric Pair Mode
(electric-pair-mode 1)

;; Set Default Tab Space To 4
(setq-default tab-width 4)

;; Open Emacs in Full Screen
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;;
;; Theme Definition
;;

(rc/require 'vscode-dark-plus-theme)
(load-theme 'vscode-dark-plus t)

;;
;; Font Definition
;;

(set-face-attribute 'default nil :font "Ubuntu Mono-11")

;;
;; Custom Packges
;;

(rc/require-one-package 'sml-mode)
