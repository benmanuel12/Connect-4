#lang racket/gui

(define main-window (new frame%
                         [label "Title Goes Here"]
                         [width 900]
                         [height 700]
                         ))

(define button-row (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))

(define row-0 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))
(define row-1 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))
(define row-2 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))
(define row-3 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))
(define row-4 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))
(define row-5 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   ))

(define blank (read-bitmap "/Users/broth/Desktop/test-slot.bmp"))

;Buttons

(define button0 (new button%
                     [parent button-row]
                     [label "Column 0"]
                     [min-height 25]
                     [min-width 50]
                     ))

(define button1 (new button%
                     [parent button-row]
                     [label "Column 1"]
                     [min-height 25]
                     [min-width 50]
                     ))

(define button2 (new button%
                     [parent button-row]
                     [label "Column 2"]
                     [min-height 25]
                     [min-width 50]
                     ))

(define button3 (new button%
                     [parent button-row]
                     [label "Column 3"]
                     [min-height 25]
                     [min-width 50]
                     ))

(define button4 (new button%
                     [parent button-row]
                     [label "Column 4"]
                     [min-height 25]
                     [min-width 50]
                     ))

(define button5 (new button%
                     [parent button-row]
                     [label "Column 5"]
                     [min-height 25]
                     [min-width 50]
                     ))

(define button6 (new button%
                     [parent button-row]
                     [label "Column 6"]
                     [min-height 25]
                     [min-width 50]
                     ))
;Slots for Row 0

(define slot-0-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-1-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-2-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-3-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-4-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-5-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-6-0 (new message%
                      [parent row-0]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))

;Slots for Row 1

(define slot-0-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-1-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-2-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-3-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-4-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-5-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-6-1 (new message%
                      [parent row-1]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))

;Slots for Row 2

(define slot-0-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-1-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-2-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-3-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-4-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-5-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-6-2 (new message%
                      [parent row-2]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))

;Slots for Row 3

(define slot-0-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-1-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-2-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-3-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-4-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-5-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-6-3 (new message%
                      [parent row-3]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))

;Slots for Row 4

(define slot-0-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-1-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-2-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-3-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-4-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-5-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-6-4 (new message%
                      [parent row-4]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))

;Slots for Row 5

(define slot-0-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-1-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-2-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-3-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-4-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-5-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))
(define slot-6-5 (new message%
                      [parent row-5]
                      [label blank]
                      [min-height 50]
                      [min-width 50]
                      ))

(send main-window show #t)
