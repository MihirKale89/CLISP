;;; #4   CLISP function "Power"
;;;----------------------------
;;; Calculates a to the power of b
;;;
;;; args:  a, the base
;;;        b, the exponent
;;; returns: integer, a^b
(defun power (a b)
  (if (= b 0) 1
    (* a (power a (1- b)))))


;;; #5   CLISP function "CountZeros"
;;;---------------------------------
;;; Counts the zeros in a list
;;;
;;; args:  list, a list of integers
;;; returns: integer, the numeber of zeros in the list
(defun countzeros (listx)
  (if (listp listx)
      (cond
       ((null listx) 0)
       ((= 0 (car listx)) (+ 1 (countzeros (cdr listx))))
       ((not (= 0 (car listx))) (+ 0 (countzeros (cdr listx)))))
    (if (= 0 listx) 1 
      0)
  )
)

;;; #12   CLISP function "StructEqual"
;;;-----------------------------------
;;; Determines if two lists are structurally equal
;;;
;;; args:  l1, the first list
;;;        l2, the second list
;;; returns: boolean, "t" if structurally equal, "nil" if not
(defun structequal (l1 l2)
  (cond
   ((and (atom l1) (atom l2))                   t)      ; if l1 and l2 are not lists, return true  (Necessary??)
   ((and (null l1) (null l2))                   t)      ; if l1 and l2 are null, return true
   ((and (not (null l1)) (null l2))             nil)    ; if one list is null but not the other, return false
   ((and (null l1) (not (null l2)))             nil)    ; """"""""""""
   ((and (atom (car l1)) (atom (car l2)))       
    (structequal (cdr l1) (cdr l2)))                    ; if l1[0] and l2[0] are atoms, then recurse structequal[1..n]
   ((and (atom (car l1)) (not (atom (car l2)))) nil)    ; if either l1[0] is an atom and l2[0] is not then return false
   ((and (not (atom (car l1))) (atom (car l2))) nil)    ; if either l2[0] is an atom and l1[0] is not then return false
   ((and (structequal (car l1) (car l2))               ; otherwise, check if the car of each list is structurally equivalant
    (structequal (cdr l1) (cdr l2))))                 ;  AND if the cdr of each list is structurally equivalant
  )
)

(print "Assert: NIL, T, T, T, NIL")
(print (structequal '() '(1 2 ())))
(print (structequal '(1 2 (1 2)) '(x y (a b))))
(print (structequal '(1 2 3) '(a b c)))
(print (structequal '1 'b))
(print (structequal '(1 0 0 (x c v) (x (0 n) x)) '(1 0 0 (0 5 4) (7 (p) 7))))