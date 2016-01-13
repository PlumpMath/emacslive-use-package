(use-package browse-kill-ring
  :defer t
  :bind ("M-y" . browse-kill-ring)
  :init
  (progn
    (setq browse-kill-ring-highlight-current-entry t)
    (setq browse-kill-ring-no-duplicates t)
    (setq browse-kill-ring-display-duplicates nil)
    (setq browse-kill-ring-highlight-inserted-item nil)))
