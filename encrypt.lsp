(defun encrypt (list)
  (cond
    ((null list) null)					;; returning null if list is null
    ((code-char (+ (mod (+ (- (char-code (coerce (string (car (car list)))) 'character)) 65) 5) 26) 97))
    (t (encrypt (cdr list)))
  )
)  
  
    
(print " Checking zeros in list '(4 1 1 0 0 4) ")
(print (zerosinlist '(4 1 1 0 0 4)))
(print " Checking zeros in list '(9 2 2 6 5) ")
(print (zerosinlist '(9 2 2 6 5)))


(code-char (+ (mod (+ (- (char-code #\C) 65) 5) 26) 97))

(prin1 (car '(A B C)))

(code-char (+ (mod (+ (- (char-code (coerce (string (car '(C O M P U T E R))) 'character)) 65) 5) 26) 97))

(code-char (+ (mod (+ (- (char-code (coerce (string (car (car '((C O M P U T E R) (SCIENCE))))) 'character)) 65) 5) 26) 97))

(defun string-to-list (s)
  (assert (stringp s) (s) "~s :questa non e una stringa")
  (coerce s 'list))
  
  
(string-to-list (string (car '(C O M P U T E R))))

(defun get-line ()
    (setf text (mapcar 'string (coerce (string (read)) 'list))))
    

(coerce (string (car '(C O M P U T E R))) 'character)