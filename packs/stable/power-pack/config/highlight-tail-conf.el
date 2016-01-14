(use-package highlight-tail
  :defer 5
  :diminish highlight-tail-mode
  :config
  (setq highlight-tail-colors '(("black" . 0)
                                ("deep pink" . 25)
                                ("black" . 66)
                                ))
  (setq highlight-tail-steps 14
        highlight-tail-timer 0.5)
  (setq highlight-tail-posterior-type 'const)
  (highlight-tail-mode))
