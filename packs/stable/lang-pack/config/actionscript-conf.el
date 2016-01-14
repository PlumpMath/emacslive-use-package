(use-package actionscript-mode
  :defer t
  :init
  (autoload 'actionscript-mode "actionscript-mode" "Major mode for actionscript." t)
  (add-to-list 'auto-mode-alist '("\\.as$" . actionscript-mode)))
;(eval-after-load	"actionscript-mode" '(load "actionscript-config"))
