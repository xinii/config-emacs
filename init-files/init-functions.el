(require 'point-undo)

;;; function for complete the path
(defun complete-path ()
  (interactive)
  ;; (comint-dynamic-list-filename-completions)
  (comint-dynamic-complete-filename))

;;; function for indent all, need the point-undo.el
(defun all-indent ()
  ;; indent all and back to the point
  (interactive)
  (mark-whole-buffer)
  (indent-region (region-beginning)(region-end))
  (point-undo))

(defun uncomment-region-clean-whitespace ()
  (interactive)
  (uncomment-region (region-beginning) (region-end))
  (delete-trailing-whitespace))

(defun yama-region-active-p ()
  ;; リージョンアクティブならtを返す.
  (if (and transient-mark-mode mark-active) t nil))

(defun right-line ()
  ;; カレント行を空白で埋めて、右寄せする
  (interactive)
  (save-excursion
    (end-of-line)
    (let ((ln(- fill-column (current-column))))
      (beginning-of-line)
      (insert-char ?\  ln))))

(defun right-line-region (start end)
  ;; 選択範囲内を空白で埋めて右寄せする。範囲選択されてなければカレント行を右寄せする
  (interactive "r")
  (save-excursion
    (save-restriction
      (goto-char start)
      (unless (bolp)
	(beginning-of-line)
	(setq start (point)))
      (goto-char end)
      (unless (bolp)
	(beginning-of-line)
	(setq end (point)))
      (narrow-to-region start end)
      (let ((max-line (count-lines start end))
	    (count 0))
	(goto-char (point-min))
	(while (< count max-line)
	  (right-line)
	  (next-line)
	  (setq count (1+ count)))))))

(defun justify-right-line (start end)
  ;; カレント行を右寄せする。範囲選択されているなら範囲内を右寄せする.
  (interactive "r")
  (if (yama-region-active-p)
      (right-line-region start end)
    (right-line)))

(defun justify-window ()
  (interactive)
  (enlarge-window-horizontally 40))

(provide 'init-functions)
