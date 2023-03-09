;;
;; Initial Definitions
;;

(package-initialize)

;; Loads Custom Functions File
(load "~/.emacs.rc/rc.el")

;; Creates an external custom file
(setq custom-file "~/.custom.el")
(load custom-file)

;;
;; Basic Definitions
;;

(setq inhibit-splash-screen t)        ;; Stops Startup Message
(menu-bar-mode -1)                    ;; Disable Menu Bar
(tool-bar-mode -1)                    ;; Disable Tools Bar
(scroll-bar-mode -1)                  ;; Disable Scroll Bar
(column-number-mode 1)                ;; Enables Column Number Mode
(cua-mode 1)                          ;; Enables CUA Mode
(setq c-default-style "linux"         ;; Set "GNU" Style Indenting For c
      c-basic-offset 4)           
(electric-pair-mode 1)                ;; Enable Eletric Pair Mode
(setq-default tab-width 4)            ;; Set Default Tab Space To 4
(add-hook 'window-setup-hook          ;; Initialize Emacs in Full Screen Mode
		  'toggle-frame-maximized t)

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

;;; Sml Mode
(rc/require-one-package 'sml-mode)

;;; Auto Complete Package
(rc/require-one-package 'auto-complete)
(ac-config-default)
