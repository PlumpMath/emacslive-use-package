(use-package magit
  :defer t
  :bind ("C-x g" . magit-status)
  :config
  (add-hook 'magit-log-edit-mode-hook
            (lambda ()
              (set-fill-column 72)
              (auto-fill-mode 1))))
