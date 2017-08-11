(defun power (x y)
(if (= y 0) 1                   ;; returning 1 if raised to 0
(* x (power x (1- y)))))        ;; recursive call

(print " Checking (power 5 2) ")
(print (power 5 2))
(print " Checking (power 6 3) ")
(print (power 6 3))
                