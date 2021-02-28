(require 'jedi)
(require 'epc)
(require 'python)
(require 'python-environment)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(setq python-indent-guess-indent-offset t)
(setq python-indent-guess-indent-offset-verbose nil)
(when (fboundp 'jedi:setup) (jedi:setup))
(setq python-shell-completion-native-enable nil)

;;(setenv "PYTHONPATH" "/usr/local/lib/python2.7/site-packages")
;;(setenv "PYTHONPATH" "~/.anyenv/envs/pyenv/versions/3.6.8/lib/python3.6/site-packages")
(setenv "PYTHONPATH" (shell-command-to-string "$SHELL --login -c 'echo -n $PYTHONPATH'"))

(provide 'init-python)
