

;Christopher James
;Roster3: 9
;Advanced Programming Languages
;Program 3 - CLISP
;
;



;Function calulates the discriminant.
(defun discrim (a b c)
	;(b*b) - (4ac)
	( - (* b b) (* 4 ( * a c)))
)


;function calulates the positive root
(defun roots1 (a b d)
	; (-b + d)/(2a)
	( / (- d b )(* 2 a)) 
)

;function calculates the negative root
(defun roots2 (a b d)
	; (-b - d)/(2a)
	( / (- (* -1 d) b )(* 2 a)) 
)

;function outputs string followed by two parameters;
(defun printans (x y)
	(format nil "Roots are: ~a  ~a" x y)
)

;Main function to call
;Calls with a b c
(defun main (a b c)
	(printans (roots1 a b (sqrt (discrim a b c)))(roots2 a b (sqrt(discrim a b c ))))
)
