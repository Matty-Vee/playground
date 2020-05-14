(define (deep-map fn xmas)
  (cond ((null? xmas) '())
	((pair? xmas)
	 (cons (deep-map fn (car xmas))
	       (deep-map fn (cdr xmas))))
	(else (fn xmas))))