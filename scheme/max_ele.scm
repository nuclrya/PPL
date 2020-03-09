(define (max_ele a_list)
    (cond   
        ((null? a_list) '())
        ((null? (cdr a_list)) (car a_list))
        ((> (car a_list) (max_ele (cdr a_list))) (car a_list))
        (else (max_ele (cdr a_list)))
    ) 
)