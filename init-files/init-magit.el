(require 'magit)

;(setq-default magit-auto-revert-mode nil)
;(setq vc-handled-backends '())
;(eval-after-load "vc" '(remove-hook 'find-file-hooks 'vc-find-file-hook))

;(custom-set-faces
; '(magit-diff-added ((t (:background "black" :foreground "green"))))
; '(magit-diff-added-highlight ((t (:background "white" :foreground "green"))))
; '(magit-diff-removed ((t (:background "black" :foreground "blue"))))
; '(magit-diff-removed-hightlight ((t (:background "white" :foreground "blue"))))
; '(magit-hash ((t (:foreground "red"))))
; )
;; These Code May occur warning on Linux

(global-set-key (kbd "C-c s") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame)

(provide 'init-magit)
