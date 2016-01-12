(use-package cider
  :defer t
  :init
  (progn
    (defun live-windows-hide-eol ()
      "Do not show ^M in files containing mixed UNIX and DOS line endings."
      (interactive)
      (setq buffer-display-table (make-display-table))
      (aset buffer-display-table ?\^M []))

    (when (eq system-type 'windows-nt)
      (add-hook 'nrepl-mode-hook 'live-windows-hide-eol ))

    (add-hook 'cider-repl-mode-hook
              (lambda ()
                (cider-turn-on-eldoc-mode)
                (paredit-mode 1)))

    (add-hook 'cider-mode-hook
              (lambda ()
                (cider-turn-on-eldoc-mode)
                (paredit-mode 1)))

    (setq cider-popup-stacktraces t)
    (setq cider-popup-stacktraces-in-repl t)
    (add-to-list 'same-window-buffer-names "*cider*"))
  :config
  (progn
    (define-key cider-repl-mode-map (kbd "M-RET") 'cider-doc)
    (define-key cider-mode-map (kbd "M-RET") 'cider-doc)))

;;Auto Complete
(use-package ac-cider
  :defer t
  :init
  (progn
    (add-hook 'cider-mode-hook 'ac-cider-setup)
    (add-hook 'cider-repl-mode-hook 'ac-cider-setup)

    (eval-after-load "auto-complete"
      '(add-to-list 'ac-modes 'cider-mode))

    ;; Specify the print length to be 100 to stop infinite sequences killing
    ;; things. This might be dangerous for some people relying on
    ;; *print-length* being larger. Consider a work around
    ;; (defun live-nrepl-set-print-length ()
    ;;   (nrepl-sync-request:eval "(set! *print-length* 100)" "clojure.core"))

    ;; (add-hook 'nrepl-connected-hook 'live-nrepl-set-print-length)
    (setq nrepl-port "4555")))

;; Pull in the awesome clj-refactor lib by magnars
(use-package clj-refactor
  :defer t
  :init
  (progn
    (add-hook 'clojure-mode-hook (lambda ()
                                   (clj-refactor-mode 1)
                                   (cljr-add-keybindings-with-prefix "C-c C-m"))))
  :config
  (progn
    (define-key clojure-mode-map (kbd "C-:") 'cljr-cycle-stringlike)
    (define-key clojure-mode-map (kbd "C->") 'cljr-cycle-coll)))
