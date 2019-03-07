#lang racket
(define board (vector
               (vector 1 1 1 1 0 0 0) ;row/panel 0
               (vector 0 0 0 0 0 0 0) ;row/panel 1
               (vector 0 0 0 0 0 0 0) ;row/panel 2
               (vector 0 0 0 0 0 0 0) ;row/panel 3
               (vector 0 0 0 0 0 0 0) ;row/panel 4
               (vector 0 0 0 0 0 0 0) ;row/panel 5
               ))

(define test (λ () (for [(i '(0 1 2 3))]
                     (cond
                       ((and (not (equal? (vector-ref (vector-ref board 0) i) 0))
                             (not (equal? (vector-ref (vector-ref board 0) (+ 1 i)) 0)))
                             (not (equal? (vector-ref (vector-ref board 0) (+ 2 i)) 0)))
                             (not (equal? (vector-ref (vector-ref board 0) (+ 3 i)) 0)))
                             (equal? 
                              (vector-ref (vector-ref board 0) i)
                              (vector-ref (vector-ref board 0) (+ 1 i))
                              (vector-ref (vector-ref board 0) (+ 2 i))
                              (vector-ref (vector-ref board 0) (+ 3 i))
                              ))
                        (print 'wow)))
