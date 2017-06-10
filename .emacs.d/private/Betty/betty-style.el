;;; betty-style.el --- Style checker for C code -*- lexical-binding: t; -*-

;; Copyright (c) 2017 Holberton School
;; Author: Alexandro de Oliveira <alexandro.oliveira@holbertonschool.com>

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Betty is the Holberton School's coding style syntax checker for C code
;; More info and install instructions: https://github.com/holbertonschool/Betty

;; Code:

(flycheck-define-checker betty-style
  "Holberton School coding style syntax checker for C code

More info and install instructions: https://github.com/holbertonschool/Betty"
  :command ("betty-style" "--no-summary" source)
  :error-patterns
  ((error line-start (file-name) ":" line ": ERROR: " (message) line-end)
  (warning line-start (file-name) ":" line ": WARNING: " (message) line-end))
  :modes c-mode
  :next-checkers ((warning . c/c++-gcc)))

(provide 'betty-style)
;;; betty-style.el ends here
