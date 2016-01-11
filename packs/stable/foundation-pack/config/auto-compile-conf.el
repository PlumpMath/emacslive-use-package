(use-package auto-compile
  :defer t
  :diminish (auto-compile-mode . "")
  :init
  (progn
    (setq load-prefer-newer t)
    (auto-compile-on-load-mode 1)
    (auto-compile-on-save-mode 1)))
