;;; packages.el --- spacemacs-janet-layer layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Christopher Miles <twitch@nervestaple.com>
;; URL: https://github.com/cmiles74/spacemacs-janet-mode
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst janet-packages
  '(
    ;; major mode
    (janet-mode :location (recipe :repo "ALSchwalm/janet-mode" :fetcher github))

    ;; interactive janet mode
    (ijanet :location (recipe :repo "SerialDev/ijanet-mode" :fetcher github))))

(defun janet/init-ijanet ()
  "Initialize the interactive janet mode"
  (use-package ijanet
    :init (progn
            (spacemacs/register-repl 'ijanet 'ijanet "janet")
            (spacemacs/set-leader-keys-for-major-mode 'janet-mode
              "'" 'ijanet))))

(defun janet/init-janet-mode ()
  "Initialize the major mode"
  (use-package janet-mode
    :init (with-eval-after-load 'janet-mode
            (define-key janet-mode-map (kbd "C-c M-j") 'ijanet)
            (define-key janet-mode-map (kbd "C-c C-c") 'ijanet-eval-defun)
            (define-key janet-mode-map (kbd "C-c C-l") 'ijanet-eval-line)
            (define-key janet-mode-map (kbd "C-c C-r") 'ijanet-eval-region)
            (define-key janet-mode-map (kbd "C-c C-b") 'ijanet-eval-buffer))))
