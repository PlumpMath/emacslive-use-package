;; The amazing undo tree
(use-package undo-tree
  :defer 5
  :bind (("C-M-_" . undo-tree-undo)
         ("C-_" . undo-tree-undo))
  :config
  (global-undo-tree-mode))
