(use-package highlight-tail
  :defer 5
  :config
  (progn
    (setq highlight-tail-colors '(("black" . 0)
                                  ("#bc2525" . 25)
                                  ("black" . 66)))
    (setq highlight-tail-steps 14
          highlight-tail-timer 0.5)
    (setq highlight-tail-posterior-type 'const)
    (highlight-tail-mode)))
