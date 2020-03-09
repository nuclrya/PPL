(define (esimp alist blist)
    (COND
        ((NULL? alist) (NULL? blist))
        ((NULL? blist) #F)
        ((esimp (CDR alist) (CDR blist)) (EQ? (CAR alist) (CAR blist)) )
    )
)