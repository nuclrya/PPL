(define (match a_list ans)
    (if (null? a_list )
    ans
    (match (cdr a_list) (+ (* (car a_list) (car a_list)) ans))
    )
)