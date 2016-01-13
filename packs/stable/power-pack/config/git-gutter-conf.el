(use-package git-gutter
  :defer 5
  :config
  (progn
    (global-git-gutter-mode t)
    (setq git-gutter:window-width 1)
    (setq git-gutter:lighter " G-+")
    (setq git-gutter:modified-sign "~")
    (setq git-gutter:added-sign "+")
    (setq git-gutter:deleted-sign "-")
    (setq git-gutter:unchanged-sign " ")))
