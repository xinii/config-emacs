(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "~/.emacs.d/templates/")
(setq auto-insert-alist
      (append '(("\\.md" . "markdown-template.txt")
		("\\.txt" . "org-mode-template.txt")
		("\\.org" . "org-mode-template.txt")
		("\\.py" . "python-template.txt"))))

(provide 'init-auto-insert)
