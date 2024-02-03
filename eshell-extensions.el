;;; eshell-extensions.el --- A bunch of extensions for eshell  -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Eshell-Extensions Chandran

;; Author: Eshell-Extensions Chandran <eshell-extensions.c@gmail.com>
;; Version: 1.0
;; Package-Requires ((cl-lib "0.5"))
;; Keywords: eshell, extensions
;; URL: https://github.com/eshell-extensions/eshell-extensions.el

;;; Commentary:

;; eshell-extensions.el is a lightweight library of eshell functions
;; to use for extra functionality to make you productive and use
;; more eshell for your terminal experience.

;; Full documentation is available as an Info manual.

;;; Code:
(require 'cl-lib)
(require 'eshell)

;;;###autoload
(defun eshell-extensions/open-new-eshell ()
  "Open new shell instance everytime."
  (interactive)
  (eshell 'N))


;;;###autoload
(defun eshell-extensions/eshell-vertical ()
  "Open new shell instance in vertical split."
  (interactive)
  (split-window-below)
  (eshell 'N))


;;;###autoload
(defun eshell-extensions/eshell-horizontal ()
  "Open new shell instance in horizontal split."
  (interactive)
  (split-window-right)
  (eshell 'N))


;;;###autoload
(defun eshell-extensions/run-previous-eshell-command ()
  "Run the previous command in eshell."
  (interactive)
  (eshell-command (eshell-get-history 0)))


;;;###autoload
(defun eshell-extensions/eshell-command-current-line ()
  "Run the command from current line in eshell."
  (interactive)
  (let ((cmd (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
  (message "Running command: %s" cmd)
  (eshell-command cmd)))


;;;###autoload
(defun eshell-extensions/kill-buffer-eshell-command-output ()
  "Kill the buffer named *Eshell Command Output*."
  (interactive)
  (kill-buffer "*Eshell Command Output*"))

(provide 'eshell-extensions)

;; Local Variables:
;; coding: utf-8
;; End:
;;; eshell-extensions.el ends here
