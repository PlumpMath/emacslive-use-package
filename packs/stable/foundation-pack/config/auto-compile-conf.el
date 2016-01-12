(use-package auto-compile
  :defer t
  :diminish (auto-compile-mode . "")
  :init
  (setq load-prefer-newer t)
  :config
  (progn
    (auto-compile-on-load-mode 1)
    (auto-compile-on-save-mode 1)))
