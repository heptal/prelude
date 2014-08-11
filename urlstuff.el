(require 'url)

(defun dftp (&optional url)
  (interactive)
  (let ((url
           (read-string "Enter download URL: ")))
    (let ((download-buffer (url-retrieve-synchronously url)))
            (save-excursion
              (set-buffer download-buffer)
              ;; we may have to trim the http response
              (goto-char (point-min))
              (re-search-forward "^$" nil 'move)
              (forward-char)
              ;; ;; (delete-region (point-min) (point))
              (setq json (buffer-substring-no-properties (point) (point-max)))
              (kill-buffer (current-buffer)))
            (insert json))))
              ;; (write-file (concat (or download-dir
              ;;                         "~/downloads/")
              ;;                     (or download-name
              ;;                         (car (last (split-string url "/" t))))))))))

(defun dhtp (&optional uri)
  (interactive)
  (let ((uri
         (thing-at-point 'url)
         ;;(read-string "Enter dowjfjfjnload URL: ")
         ))
    (let ((download-buffer (url-retrieve-synchronously uri)))
      (move-end-of-line 1)
      (newline)
      (save-excursion
        (set-buffer download-buffer)
        (goto-char (point-min))
        (re-search-forward "^$" nil 'move)
        (setq header (buffer-substring-no-properties (point-min) (point)))
        (setq body (buffer-substring-no-properties (point) (point-max)))
        (kill-buffer (current-buffer)))
      (insert "\n* " uri)
      (insert "\n** HEADERS\n" header)
      (insert "\n** BODY\n" body "\n")
)))


(require 'thingatpt)

(defun ffff () '(dhtp (thing-at-point 'url)))

;; (defun download-file (&optional url download-dir download-name)
;;   (interactive)
;;   (let ((url (or url
;;                  (read-string "Enter download URL: "))))
;;     (let ((download-buffer (url-retrieve-synchronously url)))
;;       (save-excursion
;;         (set-buffer download-buffer)
;;         ;; we may have to trim the http response
;;         (goto-char (point-min))
;;         (re-search-forward "^$" nil 'move)
;;         (forward-char)
;;         (delete-region (point-min) (point))
;;         (write-file (concat (or download-dir
;;                                 "~/downloads/")
;;                             (or download-name
;;                                 (car (last (split-string url "/" t))))))))))


; siksHTTP/1.1 200 OK

(defun ffff (&optional uri)
  (interactive)
  (let ((uri
         (thing-at-point 'url)
         ;;(read-string "Enter dowjfjfjnload URL: ")
         ))
    (let ((download-buffer (url-retrieve-synchronously uri)))
      ;; (move-end-of-line 1)
      ;; (newline)
      (save-excursion
        (set-buffer download-buffer)
        (goto-char (point-min))
        (re-search-forward "^Server: " nil 'move)
        (setq header (buffer-substring-no-properties (point) (end-of-line)))
        ;; (setq body (buffer-substring-no-properties (point) (point-max)))
        (kill-buffer (current-buffer)))
      (insert "\n* " uri)
      ;; (insert "\n** HEADERS\n" header)
      ;; (insert "\n** BODY\n" body "\n")
      )))
