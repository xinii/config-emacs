(require 'python)

(setq python-indent-guess-indent-offset t)
(setq python-indent-guess-indent-offset-verbose nil)
(setq python-shell-completion-native-enable nil)

;;(setenv "PYTHONPATH" "/usr/local/lib/python2.7/site-packages")
;;(setenv "PYTHONPATH" "~/.anyenv/envs/pyenv/versions/3.6.8/lib/python3.6/site-packages")
(setenv "PYTHONPATH" (shell-command-to-string "$SHELL --login -c 'echo -n $PYTHONPATH'"))

(provide 'init-python)
