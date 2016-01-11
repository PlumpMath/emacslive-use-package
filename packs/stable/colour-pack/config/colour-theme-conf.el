(use-package color-theme
  :defer t
  :init
  (progn
    (load-file (concat (live-pack-lib-dir) "cyberpunk.el"))
    (load-file (concat (live-pack-lib-dir) "gandalf.el")))
  :config
  (progn
    (color-theme-cyberpunk)
    (set-cursor-color "yellow")))
