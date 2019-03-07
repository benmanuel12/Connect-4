#lang racket
(define board (vector
               (vector 0 0 0 0 0 0 0) ;row/panel 0
               (vector 0 0 0 0 0 0 0) ;row/panel 1
               (vector 0 0 0 0 0 0 0) ;row/panel 2
               (vector 0 0 0 0 0 0 0) ;row/panel 3
               (vector 0 0 0 0 0 0 0) ;row/panel 4
               (vector 0 0 0 0 0 0 0) ;row/panel 5
               ))

;Note:
;turn-done = boolean
;turn-marker = integer in range (1, 2) inclusive
;column = integer in range (0, 6) inclusive
;find-empty is a function that takes an array and a column index
;and checks each index in that column for a 0 and returns the first one found from the bottom up

;(define place-piece (λ (turn-done turn-marker column)
;                      (cond
;                        ((equal? turn-done #f)
;                         (cond
;                           ((equal? turn-marker 1)
;                            (send (find-empty board column) set-label red-bmp)
;                            (set! turn-done #t)
;                            (set! turn-marker 2))
;                           (#t (send (find-empty board column) set-label yellow-bmp)
;                               (set! turn-done #t)
;                               (set! turn-marker 1))))
;                        (#t ()))))
;
;(define place-piece-column-0 (λ (turn-done turn-marker) (place-piece turn-done turn-marker 0)))
;;then bind this as the callback to button0