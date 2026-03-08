;;; ewal-auto-update.el -- Watches changes to ~/.cache/wal/ and updates the theme -*- lexical-binding: t; -*-

(require 'filenotify)

(defun my/ewal-refresh-theme (&rest _args)
  "Reload ewal colors and re-apply the theme when pywal16 cache changes"
  (message "Ewal theme realoading...")
  (load-theme 'ewal-spacemacs-modern t))

(defun my/start-ewal-auto-update ()
  "Initiates pywal16 cache file watcher"
  (let ((wal-cache (expand-file-name "~/.cache/wal/colors.json")))
    (if (file-exists-p wal-cache)
        (file-notify-add-watch
         wal-cache
         '(change)
         #'my/ewal-refresh-theme)
	  (message "Warning: Pywal cache not found at %s" wal-cache))))

(provide 'ewal-auto-update)
