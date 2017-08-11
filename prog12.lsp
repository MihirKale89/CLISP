
(defun strchkr (l1 l2)
  (cond
  ((and (atom l1) (atom l2))                          t)        ;; checking if elem[0] of both the lists is an atom
  ((and (null l1) (null l2)) 			      t)	;; checking if both the lists are null
  ((and (not (null l1)) (null l2))                  nil)	;; checking if l2 is null and l1 isn't
  ((and (null l1) (not (null l2)))                  nil)	;; checking if l1 is null and l2 isn't
  ((and (not (atom(car l1))) (atom(car l2)))        nil)	;; checking if elem[0] of l2 is an atom and elem[0] of list 1 isn't
  ((and (not (atom(car l2))) (atom(car l1)))        nil)	;; checking if elem[0] of l1 is an atom and elem[0] of list 2 isn't
    (
    (and (atom(car l2)) (atom(car l1)) (strchkr (cdr l1)(cdr l2)))
    )								;; recursive call if elem[0] of both the lists is an atom
  (
    (and (strchkr (car l1)(car l2)) (strchkr (cdr l1)(cdr l2)))
  )								;; recursive call if elem[0] of both the lists is a list  

  )
)

(print "Verifying strchkr")
(print "Verifying '() '(1 2 ())")
(print (strchkr '()'(1 2 ())))
(print "Verifying '(1 2 (1 2)) '(x y (a b))")
(print (strchkr '(1 2 (1 2)) '(x y (a b))))
