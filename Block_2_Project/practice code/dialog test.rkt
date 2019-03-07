#lang racket/gui
;(define check-win (λ (x)
;  (check-win-h)
;  (check-win-v)
;  (check-win-d)

(define my-frame (new frame%
                      [label "Hi"]
                      [width 500]
                      [height 500]
                      ))
(define my-dialog (new dialog%
                       [parent my-frame]
                       [label "stop"]
                       [width 200]
                       [height 200]
                       )
  )

(define my-button (new button%
                       [parent my-frame]
                       [label "Press Me"]
                       [callback (λ (b e) (send my-dialog show #t))]
                       ))

;(define check-win-h (λ (x)
;                      (for

(send my-frame show #t)