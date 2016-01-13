(use-package popup
  :defer t)

(use-package fuzzy
  :defer t)

;;auto-complete mode

(use-package auto-complete
  :defer 5
  :config
  (progn
    (require 'auto-complete-config)
    (setq ac-comphist-file (concat live-tmp-dir "ac-comphist.dat"))
    (setq ac-auto-show-menu t)
    (setq ac-dwim t)
    (setq ac-use-menu-map t)
    (setq ac-quick-help-delay 1)
    (setq ac-quick-help-height 60)
    (setq ac-disable-inline t)
    (setq ac-show-menu-immediately-on-auto-complete t)
    (setq ac-auto-start 2)
    (setq ac-candidate-menu-min 0)

    (set-default 'ac-sources
                 '(ac-source-dictionary
                   ac-source-words-in-buffer
                   ac-source-words-in-same-mode-buffers
                   ac-source-semantic
                   ac-source-yasnippet))
    (ac-config-default)
    (ac-flyspell-workaround)
    (global-auto-complete-mode t)
    (add-to-list 'ac-dictionary-directories (concat (live-pack-lib-dir) "auto-complete/dict"))
    (dolist (mode '(magit-log-edit-mode log-edit-mode org-mode text-mode haml-mode
                                        sass-mode yaml-mode csv-mode espresso-mode haskell-mode
                                        html-mode nxml-mode sh-mode smarty-mode clojure-mode
                                        lisp-mode textile-mode markdown-mode tuareg-mode))
      (add-to-list 'ac-modes mode))


;;;;Key triggers
    (define-key ac-completing-map (kbd "C-M-n") 'ac-next)
    (define-key ac-completing-map (kbd "C-M-p") 'ac-previous)
    (define-key ac-completing-map "\t" 'ac-complete)
    (define-key ac-completing-map (kbd "M-RET") 'ac-help)
    (define-key ac-completing-map "\r" 'nil)))

;(require 'auto-complete-config)
