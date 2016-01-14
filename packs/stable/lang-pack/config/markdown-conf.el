(use-package markdown-mode
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))
  :config
  (autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t))
