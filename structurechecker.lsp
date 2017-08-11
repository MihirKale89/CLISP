
(defun structurechecker (list1 list2)
  (cond
  ((and (atom list1) (atom list2))                          t)  ;; checking if elem[0] of both the lists is an atom
  ((and (null list1) (null list2)) 			    t)	;; checking if both the lists are null
  ((and (not (null list1)) (null list2))                  nil)	;; checking if list2 is null and list1 isn't
  ((and (null list1) (not (null list2)))                  nil)	;; checking if list1 is null and list2 isn't
  ((and (not (atom(car list1))) (atom(car list2)))        nil)	;; checking if elem[0] of list2 is an atom and elem[0] of list 1 isn't
  ((and (not (atom(car list2))) (atom(car list1)))        nil)	;; checking if elem[0] of list1 is an atom and elem[0] of list 2 isn't
    (
    (and 
      (atom(car list2)) 
      (atom(car list1))
      (structurechecker (cdr list1)(cdr list2))
    )
  )								;; recursive call if elem[0] of both the lists is an atom
  (
    (and 
      (structurechecker (car list1)(car list2))    
      (structurechecker (cdr list1)(cdr list2))
    )
  )								;; recursive call if elem[0] of both the lists is a list  

  )
)

(print "Testing structurechecker")
(print "Checking '() '(1 2 ())")
(print (structurechecker '()'(1 2 ())))
(print "Checking '(1 2 (1 2)) '(x y (a b))")
(print (structurechecker '(1 2 (1 2)) '(x y (a b))))
(print "Checking '(1 2 3) '(a b c)")
(print (structurechecker '(1 2 3) '(a b c)))
(print "Checking '(1 2 (1 (9 0) 2)) '(x y (a (s f)b))")
(print (structurechecker '(1 2 (1 (9 0) 2)) '(x y (a (s f)b))))
(print "Checking '(1 0 0 (x c v) (x (0 n) x )) '(1 0 0 (0 5 4) (7 (p) 7))")
(print (structurechecker '(1 0 0 (x c v) (x (0 n) x )) '(1 0 0 (0 5 4) (7 (p) 7))))