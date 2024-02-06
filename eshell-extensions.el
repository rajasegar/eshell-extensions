;;; eshell-extensions.el --- A bunch of extensions for eshell  -*- lexical-binding: t; -*-

;; Copyright (C) 2024 Rajasegar Chandran

;; Author: Rajasegar Chandran <rajasegar.c@gmail.com>
;; Version: 1.0
;; Package-Requires: ((emacs "24.3"))
;; Keywords: eshell, extensions
;; URL: https://github.com/rajasegar/eshell-extensions.el

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; eshell-extensions.el is a lightweight library of eshell functions
;; to use for extra functionality to make you productive and use
;; more eshell for your terminal experience.

;; Full documentation is available as an Info manual.

;;; Code:
(require 'cl-lib)
(require 'eshell)

;;;###autoload
(defun eshell-extensions-new ()
  "Open new shell instance everytime."
  (interactive)
  (eshell 'N))


;;;###autoload
(defun eshell-extensions-vertical ()
  "Open new shell instance in vertical split."
  (interactive)
  (split-window-below)
  (eshell 'N))


;;;###autoload
(defun eshell-extensions-horizontal ()
  "Open new shell instance in horizontal split."
  (interactive)
  (split-window-right)
  (eshell 'N))


;;;###autoload
(defun eshell-extensions-previous-command ()
  "Run the previous command in eshell."
  (interactive)
  (eshell-command (eshell-get-history 0)))


;;;###autoload
(defun eshell-extensions-command-current-line ()
  "Run the command from current line in eshell."
  (interactive)
  (let ((cmd (buffer-substring-no-properties (line-beginning-position) (line-end-position))))
  (message "Running command: %s" cmd)
  (eshell-command cmd)))


;;;###autoload
(defun eshell-extensions-kill-output-buffer ()
  "Kill the buffer named *Eshell Command Output*."
  (interactive)
  (kill-buffer "*Eshell Command Output*"))

(provide 'eshell-extensions)

;; Local Variables:
;; coding: utf-8
;; End:
;;; eshell-extensions.el ends here
