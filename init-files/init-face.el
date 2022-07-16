(require 'linum)
(require 'window-numbering)
(require 'color-theme-sanityinc-tomorrow)

;; モード設定
(global-linum-mode)
(column-number-mode)
(window-numbering-mode)
(menu-bar-mode 0) ; menu bar: 1 for show, 0 for not show
(tool-bar-mode 0) ; tool bar: 1 for show, 0 for not show
(scroll-bar-mode 0) ; scroll bar: 1 for show, 0 for not show
(show-paren-mode t) ; 対応する括弧を強調して表示する
(transient-mark-mode t) ; 選択範囲に色をつける
(global-visual-line-mode t) ; 表示の改行 Wrap on
(fset 'yes-or-no-p 'y-or-n-p) ; from yes or no to y or no
(color-theme-sanityinc-tomorrow-bright)
(set-face-background 'region "chocolate") ; 選択範囲の色 color-209 -> orange
(set-face-attribute 'default nil :family "Sarasa Fixed J" :height 320) ; Font and window size

;; パラメータ設定
(setq visible-bell 1)
(setq initial-frame-alist (append (list '(top . 200) '(left . 2200) '(width . 150) '(height . 30)) initial-frame-alist)) ; only for personal desktop
(setq default-frame-alist initial-frame-alist) ; 起動時に表示位置とサイズを設定する
;; (setq w1 (selected-window)) ; 起動時に分割
;; (setq w2 (split-window w1 nil t)) ; 左右
;; (setq w3 (split-window w2 nil)) ; 上下
(setq frame-title-format "%f") ; タイトルバーにファイルのフルパスを表示
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
(setq make-backup-files nil) ;; バックアップファイルを作らない
(setq auto-save-default nil) ;; オートセーブファイルを作らない
(setq comment-style 'box) ;; コメントアウトのスタイル
(setq inhibit-startup-message t) ; Close the welcome buffer when startup
(setq initial-scratch-message "") ; (setq inhibit-startup-screen t)
(setq-default indent-tabs-mode nil)
;; (setq show-paren-style 'expression) ; 括弧内を強調
;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "" :size 15))

(provide 'init-face)
