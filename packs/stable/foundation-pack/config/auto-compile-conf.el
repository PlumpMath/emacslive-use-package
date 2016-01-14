(use-package auto-compile
  :defer 5
  :diminish (auto-compile-mode . "")
  :config
  (setq load-prefer-newer t)
  (auto-compile-on-load-mode)
  (auto-compile-on-save-mode))
