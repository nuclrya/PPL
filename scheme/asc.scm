(define (asc a_list)
    (cond 
        ((null? a_list) '())
        ((null? (cdr a_list)) (car a_list))
        ((< (CAR a_list) (CADR a_list)) (cons (CAR a_list) (asc (CDR a_list))))
    )
)

