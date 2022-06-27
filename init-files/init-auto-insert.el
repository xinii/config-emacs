(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "~/.emacs.d/templates/")
(setq auto-insert-alist
      (append '(("\\.md" . "markdown-template.txt")
		("\\.py" . "python-template.txt"))))

(provide 'init-auto-insert)
