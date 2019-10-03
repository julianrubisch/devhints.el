;;; package --- devhints

;;; Commentary:

;;; Code:
(defun devhints (query)
  "Search on devhints for QUERY."
  (browse-url (format "https://www.devhints.io?q=%s" query)))

(defun devhints-search (query)
  "Search on devhints interactively for QUERY."
  (interactive "sSearch term: ")
  (devhints query))

(defun devhints-at-point ()
  "Search `thing-at-point` on devhints."
  (interactive)
  (devhints (thing-at-point 'symbol)))

(provide 'devhints)
;;; devhints ends here
