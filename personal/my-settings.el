(prelude-require-packages '(guide-key-tip))

(setq guide-key/guide-key-sequence '("C-h" "s-p" "C-x" "C-c"))
(guide-key-mode 1) ; Enable guide-key-mode



(setq-default tab-width 4)
(define-key prelude-mode-map (kbd "s-/") 'comment-or-uncomment-region)

(setq prelude-guru nil)


(provide 'my-settings)
