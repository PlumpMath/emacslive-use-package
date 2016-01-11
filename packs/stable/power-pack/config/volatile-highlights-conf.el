;; momentarily highlight changes made by commands such as undo, yank-pop, etc.
(use-package volatile-highlights
  :defer t
  :config
  (volatile-highlights-mode t))
