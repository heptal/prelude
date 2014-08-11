(prelude-require-packages '(guide-key-tip))

(setq guide-key/guide-key-sequence '("C-h" "s-p" "C-x" "C-c" "C-x c"))
(guide-key-mode 1) ; Enable guide-key-mode

(scroll-bar-mode -1)

(setq-default tab-width 4)
(define-key prelude-mode-map (kbd "s-/") 'comment-or-uncomment-region)

(setq prelude-guru nil)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-M-x)

(provide 'my-settings)
