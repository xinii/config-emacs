;;; ================= UI =================
(use-package vertico
  :init
  (vertico-mode))

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :init
  (marginalia-mode))

(use-package consult
  :bind (("C-s" . consult-line)
         ("C-x C-b" . consult-buffer)
         ("M-x" . execute-extended-command)))

;;; ================= 補完 =================
(use-package corfu
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.1)
  (corfu-auto-prefix 1))

(use-package cape
  :init
  ;; 優先度低めで追加
  (add-to-list 'completion-at-point-functions #'cape-dabbrev t)
  (add-to-list 'completion-at-point-functions #'cape-file t))

;;; ================= LSP =================
(use-package eglot
  :hook ((python-mode . eglot-ensure)
         (python-ts-mode . eglot-ensure)))

(defun my/python-capf ()
  (add-to-list 'completion-at-point-functions #'eglot-completion-at-point))

(add-hook 'python-mode-hook #'my/python-capf)

;;; ================= Git =================
(use-package magit
  :bind ("C-x g" . magit-status))

;;; ================= AI =================
(use-package gptel
  :config
  (setq gptel-model 'gpt-4.1-mini)
  (setq gptel-backend
        (gptel-make-openai
         "OpenAI"
         :key (getenv "OPENAI_API_KEY")
         :stream t))
  (global-set-key (kbd "C-c g") #'gptel))

;;; ================= Project =================
(use-package projectile
  :init
  (projectile-mode)
  :bind-keymap ("C-c p" . projectile-command-map))

(provide 'init-modern)
