;;;; Lilypond settings

(require 'auto-complete)
(require 'lilypond-mode)

(autoload 'LilyPond-mode "lilypond-mode" "LilyPond Editing Mode" t)
(add-to-list 'auto-mode-alist '("\\.ly$" . LilyPond-mode))
(add-to-list 'auto-mode-alist '("\\.ily$" . LilyPond-mode))
(add-hook 'LilyPond-mode-hook (lambda () (turn-on-font-lock)))
(add-hook 'LilyPond-mode-hook (function (lambda () (add-to-list 'LilyPond-command-alist '("OpenPDF" "open '%f'")))))

(defvar ac-lilypond-identifiers
  '((candidates . (lambda () (all-completions ac-target LilyPond-identifiers)))))

(defvar ni-LilyPond-keywords
  (mapcar (lambda (x) (concat "\\" x)) LilyPond-keywords))

(defvar ac-lilypond-keywords
  '((candidates . (lambda () (all-completions ac-target ni-LilyPond-keywords)))))

(defvar ac-lilypond-Creserved-words
  '((candidates . (lambda () (all-completions ac-target LilyPond-Capitalized-Reserved-Words)))))

(defvar ac-lilypond-ncreserved-words
  '((candidates . (lambda () (all-completions ac-target LilyPond-non-capitalized-reserved-words)))))

(add-hook 'LilyPond-mode-hook
	  (lambda () "Makes autocomplete work in LilyPond mode (mostly)"
	    (make-local-variable 'ac-sources)
	    (setq ac-sources '(ac-lilypond-ncreserved-words
			       ac-lilypond-Creserved-words
			       ac-lilypond-keywords 
			       ac-lilypond-identifiers ;these don't work. why?
			       ac-source-abbrev
			       ac-source-words-in-buffer))
	    (auto-complete-mode 1)))

(provide 'init-lilypond)
