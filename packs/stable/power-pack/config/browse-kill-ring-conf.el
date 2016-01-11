(use-package browse-kill-ring
  :defer t
  :init
  (progn
    (setq browse-kill-ring-highlight-current-entry t)
    (setq browse-kill-ring-no-duplicates t)
    (setq browse-kill-ring-display-duplicates nil)
    (setq browse-kill-ring-highlight-inserted-item nil)))
