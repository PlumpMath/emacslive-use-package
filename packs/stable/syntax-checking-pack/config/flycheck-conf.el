(use-package flycheck
  :defer 5
  :init
  (setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
        flycheck-idle-change-delay 0.8
        flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list)
  :config
  (flycheck-mode)
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (use-package flycheck-package
    :config
    (eval-after-load 'flycheck
                '(flycheck-package-setup))))

(provide 'flycheck-conf)
;;; flycheck-conf.el ends here
