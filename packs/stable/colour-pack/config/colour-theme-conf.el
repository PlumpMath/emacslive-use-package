(use-package color-theme
  :defer t
  :init
  (load-file (concat (live-pack-lib-dir) "cyberpunk.el"))
  (load-file (concat (live-pack-lib-dir) "gandalf.el"))
  :config
  (color-theme-cyberpunk)
  (set-cursor-color "yellow"))
