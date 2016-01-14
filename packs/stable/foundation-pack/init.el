;; (use-package smooth-scrolling
;;   :defer t)
;; (use-package buffer-move
;;   :defer t)
;; (use-package find-file-in-project
;;   :defer t)
;; (use-package s
;;   :defer t)
;; (use-package epl
;;   :defer t)
;; (use-package pkg-info
;;   :defer t)

(live-load-config-file "auto-compile-conf.el")
(live-load-config-file "backup-dir-conf.el")
(live-load-config-file "built-in.el")
(live-load-config-file "cosmetic.el")
(live-load-config-file "elisp-slime-nav-conf.el")
(live-load-config-file "ibuffer-git-conf.el")
(live-load-config-file "ido-conf.el")
(live-load-config-file "key-chord-conf.el")
(live-load-config-file "lisp-conf.el")
(live-load-config-file "live.el")
(live-load-config-file "monkey-patch.el")
(live-load-config-file "mouse-conf.el")
(live-load-config-file "popwin-conf.el")
(live-load-config-file "recentf-conf.el")
(live-load-config-file "shell-conf.el")
(live-load-config-file "smex-conf.el")
(live-load-config-file "spelling-conf.el")
(live-load-config-file "tramp-conf.el")
(live-load-config-file "util-fns.el")
(live-load-config-file "win-switch-conf.el")
(live-load-config-file "window-numbering-conf.el")
(live-load-config-file "zone-conf.el")
(when (eq system-type 'darwin)
  (live-load-config-file "osx.el"))
