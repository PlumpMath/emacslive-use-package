(use-package recentf
  :defer 5
  :init
  ;; 50 files ought to be enough.
  (setq recentf-max-saved-items 50)
  :config
  ;; get rid of `find-file-read-only' and replace it with something
  ;; more useful.

  ;; enable recent files mode.
  (recentf-mode t)

  (defun ido-recentf-open ()
    "Use `ido-completing-read' to \\[find-file] a recent file"
    (interactive)
    (if (find-file (ido-completing-read "Find recent file: " recentf-list))
        (message "Opening file...")
      (message "Aborting"))))
