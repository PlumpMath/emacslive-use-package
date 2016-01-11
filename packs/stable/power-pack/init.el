;; Live Power Pack

(use-package mwe-log-commands
  :ensure nil
  :defer t
  :load-path (lambda () (live-pack-lib-dir)))
(use-package iy-go-to-char
  :defer t)
(use-package lively
  :defer t)

(live-load-config-file "volatile-highlights-conf.el")
(live-load-config-file "yasnippet-conf.el")
(live-load-config-file "undo-tree-conf.el")
(live-load-config-file "refheap-conf.el")
(live-load-config-file "scratch-conf.el")
(live-load-config-file "highlight-tail-conf.el")
(live-load-config-file "gist-conf.el")
(live-load-config-file "browse-kill-ring-conf.el")
(live-load-config-file "expand-region-conf.el")
(live-load-config-file "ace-jump-mode-conf.el")
(live-load-config-file "multiple-cursors-conf.el")
(live-load-config-file "git-gutter-conf.el")
(live-load-config-file "floobits-conf.el")
(live-load-config-file "wc-mode-conf.el")
