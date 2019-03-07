#lang racket/gui

;Functions needed
;button => array
;array => empty index
;array => message%s
;array => winstate

(define main-window (new frame%
                         [label "Title Goes Here"]
                         [width 700]
                         [height 250]
                         ))

(define big-title (new message%
                       [parent main-window]
                       [label "Title also goes here"]
                       [vert-margin 20]
                       [font (make-object font% 20 'default 'normal 'bold)]
                       ))

(define button-row (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   [vert-margin 10]
                   ))


(define left-row (new vertical-panel%
                     [parent button-row]
                     [alignment (list 'left 'center)]
                     [min-height 25]
                     ))



(define row-0 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   ))
(define row-1 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   [vert-margin 0]
                   ))
(define row-2 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   ))
(define row-3 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   ))
(define row-4 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   ))
(define row-5 (new horizontal-panel%
                   [parent main-window]
                   [alignment (list 'center 'center)]
                   [min-height 25]
                   ))

(define blank (read-bitmap "/Users/broth/Desktop/Block_2_Project/test_slot2.bmp"))
(define red-banner (read-bitmap "/Users/broth/Desktop/Block_2_Project/red_banner.bmp"))
(define yellow-banner (read-bitmap "/Users/broth/Desktop/Block_2_Project/yellow_banner.bmp"))
(define yellow-bmp (read-bitmap "/Users/broth/Desktop/Block_2_Project/yellow_bmp.bmp"))

;Buttons

(define button0 (new button%
                     [parent button-row]
                     [label "0"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (send slot-0-0 set-label yellow-bmp))]
                     ))

(define button1 (new button%
                     [parent button-row]
                     [label "1"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (send slot-0-0 set-label blank))]
                     ))

(define button2 (new button%
                     [parent button-row]
                     [label "2"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     ))

(define button3 (new button%
                     [parent button-row]
                     [label "3"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     ))

(define button4 (new button%
                     [parent button-row]
                     [label "4"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     ))

(define button5 (new button%
                     [parent button-row]
                     [label "5"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     ))

(define button6 (new button%
                     [parent button-row]
                     [label "6"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     ))

(define right-row (new vertical-panel%
                     [parent button-row]
                     [alignment (list 'right 'center)]
                     [min-height 25]
                     ))

;PLayer Labels

(define player1-label (new message%
                           [parent left-row]
                           [label "PLAYER_1_NAME"]
                           [horiz-margin 30]
                           ;[vert-margin 30]
                           [font (make-object font% 14 'default 'normal 'normal #t)]
                           ))

(define player1-colour (new message%
                           [parent left-row]
                           [label red-banner]
                           [horiz-margin 30]
                           ;[vert-margin 30]
                           ))

(define player2-label (new message%
                           [parent right-row]
                           [label "PLAYER_2_NAME"]
                           [horiz-margin 30]
                           ;[vert-margin 30]
                           [font (make-object font% 14 'default 'normal 'normal #t)]
                           ))

(define player2-colour (new message%
                           [parent right-row]
                           [label yellow-banner]
                           [horiz-margin 30]
                           ;[vert-margin 30]
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

;Reset button
(define reset-button (new button%
                          [parent main-window]
                          [label "New Game"]
                          [vert-margin 10]
                          [font (make-object font% 12 'default 'normal)]
                          ))

(send main-window show #t)

(define board (vector
               (vector 0 0 0 0 0 0 0) ;row/panel 0
               (vector 0 0 0 0 0 0 0) ;row/panel 1
               (vector 0 0 0 0 0 0 0) ;row/panel 2
               (vector 0 0 0 0 0 0 0) ;row/panel 3
               (vector 0 0 0 0 0 0 0) ;row/panel 4
               (vector 0 0 0 0 0 0 0) ;row/panel 5
               ))