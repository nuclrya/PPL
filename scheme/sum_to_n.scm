(define (fib n)
	(if (<= n 1)
	1
	(+ n (fib (- n 1)))
)
)
