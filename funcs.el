(defun ijanet-eval-defun (&optional and-go)
  "Evaluate the function definition at point"
  (interactive "P")
  (save-excursion
    (end-of-defun)
    (let ((end (point)) (case-fold-search t))
      (beginning-of-defun)
      (ijanet-eval-region (point) end))))
