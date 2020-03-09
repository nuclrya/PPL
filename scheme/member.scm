(define (member atm a_list)
(COND
((NULL? a_list) #F)
((EQ? atm (CAR a_list)) #T)
(ELSE (member atm (CDR a_list)))
))