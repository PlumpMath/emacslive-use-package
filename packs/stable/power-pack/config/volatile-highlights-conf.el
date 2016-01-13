;; momentarily highlight changes made by commands such as undo, yank-pop, etc.
(use-package volatile-highlights
  :defer 5
  :config
  (volatile-highlights-mode t))
