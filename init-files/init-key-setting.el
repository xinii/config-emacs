;;;; Key settings

;;; Hyper, Super, Alt

;; Turn `C-]' into a sticky "super" modifier, and move the global binding for C-] to C-s-]

(define-key function-key-map [?\C-\]] 'event-apply-super-modifier)
(define-key global-map [?\C-\s-\]] (lookup-key global-map [?\C-\]] t))
(define-key global-map [?\C-\]] nil)

(define-key function-key-map [?\M-\]] 'event-apply-alt-modifier)
(define-key global-map [?\M-\A-\]] (lookup-key global-map [?\M-\]] t))
(define-key global-map [?\M-\]] nil)

(define-key function-key-map [?\C-\M-\]] 'event-apply-hyper-modifier)
(define-key global-map [?\C-\M-\H-\]] (lookup-key global-map [?\C-\M-\]] t))
(define-key global-map [?\C-\M-\]] nil)

;;; Custom settings
(define-key global-map (kbd "C-z") 'point-undo)
(define-key global-map (kbd "C-x C-z") 'point-redo)
(define-key global-map (kbd "M-p") 'point-undo)
(define-key global-map (kbd "M-n") 'point-redo)

(define-key global-map (kbd "M-o M-i") 'all-indent)
(define-key global-map (kbd "M-o M-p") 'complete-path)
(define-key global-map (kbd "M-o M-;") 'comment-region)
(define-key global-map (kbd "M-o M-u") 'uncomment-region-clean-whitespace)

(define-key global-map (kbd "s-a") 'org-roam-alias-add)
(define-key global-map (kbd "s-d") 'org-id-get-create)
(define-key global-map (kbd "s-f") 'org-roam-node-find)
(define-key global-map (kbd "s-i") 'org-roam-node-insert)
(define-key global-map (kbd "s-r") 'org-roam-node-random)
(define-key global-map (kbd "s-s") 'org-roam-db-sync)
(define-key global-map (kbd "s-t") 'org-roam-tag-add)
(define-key global-map (kbd "s-u") 'org-roam-ui-mode)
(define-key global-map (kbd "s-x") 'org-roam-ui-export)

(define-key global-map (kbd "s-DEL") 'lookup)
(define-key global-map (kbd "s-RET") 'lookup-region)
(define-key global-map (kbd "s-SPC") 'lookup-pattern)

(define-key global-map (kbd "s-[") 'google-translate-en-ja)
(define-key global-map (kbd "s-]") 'google-translate-en-zh)
(define-key global-map (kbd "H-[") 'google-translate-zh-ja)
(define-key global-map (kbd "H-]") 'google-translate-ja-zh)

(define-key global-map (kbd "H-d") 'delete-trailing-whitespace)
(define-key global-map (kbd "H-l") 'org-toggle-link-display)
(define-key global-map (kbd "H-r") 'justify-right-line)
(define-key global-map (kbd "H-t") 'toggle-truncate-lines)
(define-key global-map (kbd "H-v") 'global-visual-line-mode)
(define-key global-map (kbd "H-w") 'whitespace-mode)
(define-key global-map (kbd "C-H-l") 'toggle-lockfile-creation)
(define-key global-map (kbd "C-s-x C-c") 'suspend-frame)

;;; Enable some disabled functions for advanced-level Emacs users
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;; Unset key for some major mode
;; (add-hook 'c-mode-hook (lambda() (local-unset-key (kbd "C-c DEL"))))
;; (add-hook 'web-mode-hook (lambda() (local-unset-key (kbd "C-c C-h"))))

;;; Key translation map
;; (define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
;; (define-key key-translation-map (kbd "DEL") (kbd "C-h"))
;; (define-key key-translation-map (kbd "C-M-y") (kbd "C-M-h"))

(define-key key-translation-map (kbd "s-<backspace>") (kbd "s-DEL"))
(define-key key-translation-map (kbd "s-<return>") (kbd "s-RET"))

(define-key key-translation-map (kbd "M-[ 1 ; 5 l") (kbd "C-,"))
(define-key key-translation-map (kbd "M-[ 1 ; 6 l") (kbd "C-<"))
(define-key key-translation-map (kbd "M-[ 1 ; 7 l") (kbd "C-M-,"))
(define-key key-translation-map (kbd "M-[ 1 ; 8 l") (kbd "C-M-<"))

(define-key key-translation-map (kbd "M-[ 1 ; 5 n") (kbd "C-."))
(define-key key-translation-map (kbd "M-[ 1 ; 6 n") (kbd "C->"))
(define-key key-translation-map (kbd "M-[ 1 ; 7 n") (kbd "C-M-."))
(define-key key-translation-map (kbd "M-[ 1 ; 8 n") (kbd "C-M->"))

(define-key key-translation-map (kbd "M-[ 1 ; 5 m") (kbd "C--"))
(define-key key-translation-map (kbd "M-[ 1 ; 6 m") (kbd "C-_"))
(define-key key-translation-map (kbd "M-[ 1 ; 7 m") (kbd "C-M--"))
(define-key key-translation-map (kbd "M-[ 1 ; 8 m") (kbd "C-M-_"))

(define-key key-translation-map (kbd "M-[ 1 ; 5 k") (kbd "C-="))
(define-key key-translation-map (kbd "M-[ 1 ; 6 k") (kbd "C-+"))
(define-key key-translation-map (kbd "M-[ 1 ; 7 k") (kbd "C-M-="))
(define-key key-translation-map (kbd "M-[ 1 ; 8 k") (kbd "C-M-+"))

;;; Key binding for Japanese and Chinese IME
;; 1st row of keyboard
(define-key key-translation-map (kbd "M-ぬ") (kbd "M-1"))
(define-key key-translation-map (kbd "M-ﾇ") (kbd "M-1"))
(define-key key-translation-map (kbd "M-ふ") (kbd "M-2"))
(define-key key-translation-map (kbd "M-ﾌ") (kbd "M-2"))
(define-key key-translation-map (kbd "M-あ") (kbd "M-3"))
(define-key key-translation-map (kbd "M-ｱ") (kbd "M-3"))
(define-key key-translation-map (kbd "M-う") (kbd "M-4"))
(define-key key-translation-map (kbd "M-ｳ") (kbd "M-4"))
(define-key key-translation-map (kbd "M-え") (kbd "M-5"))
(define-key key-translation-map (kbd "M-ｴ") (kbd "M-5"))
(define-key key-translation-map (kbd "M-お") (kbd "M-6"))
(define-key key-translation-map (kbd "M-ｵ") (kbd "M-6"))
(define-key key-translation-map (kbd "M-や") (kbd "M-7"))
(define-key key-translation-map (kbd "M-ﾔ") (kbd "M-7"))
(define-key key-translation-map (kbd "M-ゆ") (kbd "M-8"))
(define-key key-translation-map (kbd "M-ﾕ") (kbd "M-8"))
(define-key key-translation-map (kbd "M-よ") (kbd "M-9"))
(define-key key-translation-map (kbd "M-ﾖ") (kbd "M-9"))
(define-key key-translation-map (kbd "M-わ") (kbd "M-0"))
(define-key key-translation-map (kbd "M-ﾜ") (kbd "M-0"))
(define-key key-translation-map (kbd "M-ほ") (kbd "M-="))
(define-key key-translation-map (kbd "M-ﾎ") (kbd "M-="))
(define-key key-translation-map (kbd "M-へ") (kbd "M-^"))
(define-key key-translation-map (kbd "M-ﾍ") (kbd "M-^"))
(define-key key-translation-map (kbd "M-ー") (kbd "M-|"))
(define-key key-translation-map (kbd "M-ｰ") (kbd "M-|"))
(define-key key-translation-map (kbd "M-ぁ") (kbd "M-#"))
(define-key key-translation-map (kbd "M-ｧ") (kbd "M-#"))
(define-key key-translation-map (kbd "M-ぅ") (kbd "M-$"))
(define-key key-translation-map (kbd "M-ｩ") (kbd "M-$"))
(define-key key-translation-map (kbd "M-ぇ") (kbd "M-%"))
(define-key key-translation-map (kbd "M-ｴ") (kbd "M-%"))
(define-key key-translation-map (kbd "M-ぉ") (kbd "M-&"))
(define-key key-translation-map (kbd "M-ｵ") (kbd "M-&"))
(define-key key-translation-map (kbd "M-ゃ") (kbd "M-'"))
(define-key key-translation-map (kbd "M-ｬ") (kbd "M-'"))
(define-key key-translation-map (kbd "M-ゅ") (kbd "M-("))
(define-key key-translation-map (kbd "M-ｭ") (kbd "M-("))
(define-key key-translation-map (kbd "M-ょ") (kbd "M-)"))
(define-key key-translation-map (kbd "M-ｮ") (kbd "M-)"))
;; 2nd row of keyboard
(define-key key-translation-map (kbd "M-た") (kbd "M-q"))
(define-key key-translation-map (kbd "M-ﾀ") (kbd "M-q"))
(define-key key-translation-map (kbd "M-て") (kbd "M-w"))
(define-key key-translation-map (kbd "M-ﾃ") (kbd "M-w"))
(define-key key-translation-map (kbd "M-い") (kbd "M-e"))
(define-key key-translation-map (kbd "M-ｲ") (kbd "M-e"))
(define-key key-translation-map (kbd "M-す") (kbd "M-r"))
(define-key key-translation-map (kbd "M-ｽ") (kbd "M-r"))
(define-key key-translation-map (kbd "M-か") (kbd "M-t"))
(define-key key-translation-map (kbd "M-ｶ") (kbd "M-t"))
(define-key key-translation-map (kbd "M-ん") (kbd "M-y"))
(define-key key-translation-map (kbd "M-ﾝ") (kbd "M-y"))
(define-key key-translation-map (kbd "M-な") (kbd "M-u"))
(define-key key-translation-map (kbd "M-ﾅ") (kbd "M-u"))
(define-key key-translation-map (kbd "M-に") (kbd "M-i"))
(define-key key-translation-map (kbd "M-ﾆ") (kbd "M-i"))
(define-key key-translation-map (kbd "M-ら") (kbd "M-o"))
(define-key key-translation-map (kbd "M-ﾗ") (kbd "M-o"))
(define-key key-translation-map (kbd "M-せ") (kbd "M-p"))
(define-key key-translation-map (kbd "M-ｾ") (kbd "M-p"))
(define-key key-translation-map (kbd "M-゛") (kbd "M-@"))
(define-key key-translation-map (kbd "M-ﾞ") (kbd "M-@"))
(define-key key-translation-map (kbd "M-゜") (kbd "M-["))
(define-key key-translation-map (kbd "M-ﾟ") (kbd "M-["))
(define-key key-translation-map (kbd "M-「") (kbd "M-{"))
(define-key key-translation-map (kbd "M-｢") (kbd "M-{"))
;; 3rd row of keyboard
(define-key key-translation-map (kbd "M-ち") (kbd "M-a"))
(define-key key-translation-map (kbd "M-ﾁ") (kbd "M-a"))
(define-key key-translation-map (kbd "M-と") (kbd "M-s"))
(define-key key-translation-map (kbd "M-ﾄ") (kbd "M-s"))
(define-key key-translation-map (kbd "M-し") (kbd "M-d"))
(define-key key-translation-map (kbd "M-ｼ") (kbd "M-d"))
(define-key key-translation-map (kbd "M-は") (kbd "M-f"))
(define-key key-translation-map (kbd "M-ﾊ") (kbd "M-f"))
(define-key key-translation-map (kbd "M-き") (kbd "M-g"))
(define-key key-translation-map (kbd "M-ｷ") (kbd "M-g"))
(define-key key-translation-map (kbd "M-く") (kbd "M-h"))
(define-key key-translation-map (kbd "M-ｸ") (kbd "M-h"))
(define-key key-translation-map (kbd "M-ま") (kbd "M-j"))
(define-key key-translation-map (kbd "M-ﾏ") (kbd "M-j"))
(define-key key-translation-map (kbd "M-の") (kbd "M-k"))
(define-key key-translation-map (kbd "M-ﾉ") (kbd "M-k"))
(define-key key-translation-map (kbd "M-り") (kbd "M-l"))
(define-key key-translation-map (kbd "M-ﾘ") (kbd "M-l"))
(define-key key-translation-map (kbd "M-れ") (kbd "M-;"))
(define-key key-translation-map (kbd "M-ﾚ") (kbd "M-;"))
(define-key key-translation-map (kbd "M-け") (kbd "M-:"))
(define-key key-translation-map (kbd "M-ｹ") (kbd "M-:"))
(define-key key-translation-map (kbd "M-む") (kbd "M-]"))
(define-key key-translation-map (kbd "M-ﾑ") (kbd "M-]"))
(define-key key-translation-map (kbd "M-」") (kbd "M-}"))
(define-key key-translation-map (kbd "M-｣") (kbd "M-}"))
;; 4th row of keyboard
(define-key key-translation-map (kbd "M-つ") (kbd "M-z"))
(define-key key-translation-map (kbd "M-ﾂ") (kbd "M-z"))
(define-key key-translation-map (kbd "M-さ") (kbd "M-x"))
(define-key key-translation-map (kbd "M-ｻ") (kbd "M-x"))
(define-key key-translation-map (kbd "M-そ") (kbd "M-c"))
(define-key key-translation-map (kbd "M-ｿ") (kbd "M-c"))
(define-key key-translation-map (kbd "M-ひ") (kbd "M-v"))
(define-key key-translation-map (kbd "M-ﾋ") (kbd "M-v"))
(define-key key-translation-map (kbd "M-こ") (kbd "M-b"))
(define-key key-translation-map (kbd "M-ｺ") (kbd "M-b"))
(define-key key-translation-map (kbd "M-み") (kbd "M-n"))
(define-key key-translation-map (kbd "M-ﾐ") (kbd "M-n"))
(define-key key-translation-map (kbd "M-も") (kbd "M-m"))
(define-key key-translation-map (kbd "M-ﾓ") (kbd "M-m"))
(define-key key-translation-map (kbd "M-ね") (kbd "M-,"))
(define-key key-translation-map (kbd "M-ﾈ") (kbd "M-,"))
(define-key key-translation-map (kbd "M-る") (kbd "M-."))
(define-key key-translation-map (kbd "M-ﾙ") (kbd "M-."))
(define-key key-translation-map (kbd "M-、") (kbd "M-<"))
(define-key key-translation-map (kbd "M-､") (kbd "M-<"))
(define-key key-translation-map (kbd "M-。") (kbd "M->"))
(define-key key-translation-map (kbd "M-｡") (kbd "M->"))
(define-key key-translation-map (kbd "M-《") (kbd "M-<"))
(define-key key-translation-map (kbd "M-》") (kbd "M->"))
(define-key key-translation-map (kbd "M-め") (kbd "M-/"))
(define-key key-translation-map (kbd "M-ﾒ") (kbd "M-/"))
(define-key key-translation-map (kbd "M-ろ") (kbd "M-/"))
(define-key key-translation-map (kbd "M-ﾛ") (kbd "M-/"))

(provide 'init-key-setting)
