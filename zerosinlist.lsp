(defun zerosinlist (list)
  (cond
    ((null list) 0)					;; returning 0 if list is null
    ((= (car list) 0 ) (1+ (zerosinlist (cdr list))))   ;; adding 1 and recursing if element[0] is 0
    (t (zerosinlist (cdr list)))))			;; recursing if element[0] is not 0.
    
(print " Checking zeros in list '(4 1 1 0 0 4) ")
(print (zerosinlist '(4 1 1 0 0 4)))
(print " Checking zeros in list '(9 2 2 6 5) ")
(print (zerosinlist '(9 2 2 6 5)))
