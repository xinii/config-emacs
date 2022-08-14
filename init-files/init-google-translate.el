(require 'google-translate)

(defun google-translate--search-tkk () "Search TKK." (list 430675 2721866130))

(defvar google-translate-english-chars "[:ascii:]’“”–"
  "これらの文字が含まれているときは英語とみなす")

(defun set-string ()
  (cond ((stringp string) string)
	(current-prefix-arg (read-string "Google Translate: "))
        ((use-region-p) (buffer-substring (region-beginning) (region-end)))
        (t (save-excursion
	     (let (s) (forward-char 1) (backward-sentence) (setq s (point)) (forward-sentence)
		  (buffer-substring s (point)))))))

(defun google-translate-en-ja (&optional string)
  "regionか、現在のセンテンスを言語自動判別でGoogle翻訳する。"
  (interactive)
  (setq string (set-string))
  (let* ((asciip (string-match (format "\\`[%s]+\\'" google-translate-english-chars) string)))
    (run-at-time 0.1 nil 'deactivate-mark)
    (google-translate-translate (if asciip "en" "ja")
				(if asciip "ja" "en") string)))

(defun google-translate-en-zh (&optional string)
  (interactive)
  (setq string (set-string))
  (let* ((asciip (string-match (format "\\`[%s]+\\'" google-translate-english-chars) string)))
    (run-at-time 0.1 nil 'deactivate-mark)
    (google-translate-translate (if asciip "en" "zh-CN")
				(if asciip "zh-CN" "en") string)))

(defun google-translate-zh-ja (&optional string)
  (interactive)
  (setq string (set-string))
  (let* ((asciip (string-match (format "\\`[%s]+\\'" google-translate-english-chars) string)))
    (run-at-time 0.1 nil 'deactivate-mark)
    (google-translate-translate (if asciip "zh-CN" "zh-CN")
				(if asciip "ja" "ja") string)))

(defun google-translate-ja-zh (&optional string)
  (interactive)
  (setq string (set-string))
  (let* ((asciip (string-match (format "\\`[%s]+\\'" google-translate-english-chars) string)))
    (run-at-time 0.1 nil 'deactivate-mark)
    (google-translate-translate (if asciip "ja" "ja")
				(if asciip "zh-CN" "zh-CN") string)))

;; (global-set-key (kbd "C-c C-h j") 'google-translate-en-ja)
;; (global-set-key (kbd "C-c C-h c") 'google-translate-en-zh)
;; (global-set-key (kbd "C-c C-h J") 'google-translate-zh-ja)
;; (global-set-key (kbd "C-c C-h C") 'google-translate-ja-zh)

(provide 'init-google-translate)
