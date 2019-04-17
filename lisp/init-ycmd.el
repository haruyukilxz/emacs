(require 'ycmd)

(set-variable 'ycmd-server-command '("python" "/usr/bin/ycmd"))

(add-hook 'after-init-hook #'global-ycmd-mode)

(defun ycmd-setup-completion-at-point-function ()
  "Setup `completion-at-point-functions' for `ycmd-mode'."
  (add-hook 'completion-at-point-functions
            #'ycmd-complete-at-point nil :local))

(add-hook 'ycmd-mode-hook #'ycmd-setup-completion-at-point-function)

(require 'company-ycmd)
(company-ycmd-setup)

(require 'flycheck-ycmd)
(flycheck-ycmd-setup)

(provide 'init-ycmd)
