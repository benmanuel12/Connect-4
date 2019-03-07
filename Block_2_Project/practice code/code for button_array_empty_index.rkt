#lang racket
;Note:
;turn-done = boolean
;turn-marker = integer in range (1, 2) inclusive

(define place-piece (λ (turn-done turn-marker board column)
                      (cond
                        ((equal? turn-done #f)
                         (cond
                           ((equal? turn-marker 1)
                            (cond
                              ((equal? (vector-ref (vector-ref board 5) column) 0)
                               (vector-set! (vector-ref board 5) column 1))
                              
                              ((equal? (vector-ref (vector-ref board 4) column) 0)
                               (vector-set! (vector-ref board 4) column 1))
                              
                              ((equal? (vector-ref (vector-ref board 3) column) 0)
                               (vector-set! (vector-ref board 3) column 1))
                              
                              ((equal? (vector-ref (vector-ref board 2) column) 0)
                               (vector-set! (vector-ref board 2) column 1))
                              
                              ((equal? (vector-ref (vector-ref board 1) column) 0)
                               (vector-set! (vector-ref board 1) column 1))
                              
                              ((equal? (vector-ref (vector-ref board 0) column) 0)
                               (vector-set! (vector-ref board 0) column 1))
                              
                              (set! turn-done #t)
                              (set! turn-marker 2))
                            (#t (cond
                                  ((equal? (vector-ref (vector-ref board 5) column) 0)
                                   (vector-set! (vector-ref board 5) column 2))
                              
                                  ((equal? (vector-ref (vector-ref board 4) column) 0)
                                   (vector-set! (vector-ref board 4) column 2))
                              
                                  ((equal? (vector-ref (vector-ref board 3) column) 0)
                                   (vector-set! (vector-ref board 3) column 2))
                              
                                  ((equal? (vector-ref (vector-ref board 2) column) 0)
                                   (vector-set! (vector-ref board 2) column 2))
                              
                                  ((equal? (vector-ref (vector-ref board 1) column) 0)
                                   (vector-set! (vector-ref board 1) column 2))
                              
                                  ((equal? (vector-ref (vector-ref board 0) column) 0)
                                   (vector-set! (vector-ref board 0) column 2))
                                  
                                  (set! turn-done #t)
                                  (set! turn-marker 1))))
                           (#t #f)
                           )
                         )
                        (#t #f)
                        )
                      )
  )

(define place-piece-column-0 (λ (turn-done turn-marker board) (place-piece turn-done turn-marker board 0)))
;then bind this as the callback to button0