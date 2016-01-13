(use-package yasnippet
  :defer 5
  :init
  (progn
    (setq live-yasnippet-dir (concat live-etc-dir "snippets"))
    (setq yas-snippet-dirs `(,live-yasnippet-dir)))
  :config
  (yas-global-mode 1))
