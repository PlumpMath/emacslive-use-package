;; Clojure Pack
(use-package rainbow-delimiters
  :defer t)

(use-package uuid
  :defer t)

(use-package edn
  :defer t)

(live-load-config-file "paredit-conf.el")
(live-load-config-file "mic-paren-conf.el")
(live-load-config-file "auto-complete-conf.el")

(live-load-config-file "clojure-conf.el")
(live-load-config-file "cider-conf.el")
(live-load-config-file "highlight-flash-conf.el")


;;(live-load-config-file "overtone-conf.el") TODO - fix for cider
