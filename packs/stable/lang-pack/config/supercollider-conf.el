(live-add-pack-lib "scel")

(use-package sclang
  :ensure nil
  :defer t
  :load-path (lambda () (live-pack-lib-dir))
  :init
  (when (eq system-type 'darwin)
    (setq sclang-runtime-directory "/Applications/SuperCollider.app/Contents/Resources")
    (setq sclang-program "/Applications/SuperCollider.app/Contents/Resources/sclang")
    (setq sclang-help-path (quote ("/Applications/SuperCollider.app/Contents/Resources/HelpSource"))))

  (custom-set-variables
   '(sclang-auto-scroll-post-buffer t)
   '(sclang-eval-line-forward nil)))
