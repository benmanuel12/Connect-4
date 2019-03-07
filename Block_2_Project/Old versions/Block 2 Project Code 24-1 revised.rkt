#lang racket/gui

;Functions needed
;set all slots to blank and the won boolean to false and the turn-marker to 1
;button => array => empty index
;array => message%s
;array => winstate (if no, change turn-marker to the other value and unflip turn-done boolean)
; (if yes, display winscreen and then after a pause run the start state initialising function

(define main-window (new frame%
                         [label "Connect 4"]
                         [width 700]
                         [height 250]
                         ))
(define win-window-1 (new dialog%
                          [label "Player 1 won"]
                          [parent main-window]
                          [height 200]
                          [width 200]
                          ))

(define win-window-2 (new dialog%
                          [label "Player 2 won"]
                          [parent main-window]
                          [height 200]
                          [width 200]
                          ))

(define draw-window (new dialog%
                         [label "No player won"]
                         [parent main-window]
                         [height 200]
                         [width 200]
                         ))
                       

(define big-title (new message%
                       [parent main-window]
                       [label "Connect 4"]
                       [vert-margin 10]
                       [font (make-object font% 20 'default 'normal 'bold)]
                       ))

(define play-title (new message%
                        [parent main-window]
                        [label "Player 1's Turn"]
                        [vert-margin 5]
                        [font (make-object font% 16 'default 'normal 'bold)]
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

(define blank (read-bitmap "/Users/broth/Desktop/Block_2_Project/blank_slot_bmp.bmp"))
(define red (read-bitmap "/Users/broth/Desktop/Block_2_Project/red_slot_bmp.bmp"))
(define yellow (read-bitmap "/Users/broth/Desktop/Block_2_Project/yellow_slot_bmp.bmp"))

(define red-banner (read-bitmap "/Users/broth/Desktop/Block_2_Project/red_banner.bmp"))
(define yellow-banner (read-bitmap "/Users/broth/Desktop/Block_2_Project/yellow_banner.bmp"))


;Buttons

(define button0 (new button%
                     [parent button-row]
                     [label "0"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-0))]
                     ))

(define button1 (new button%
                     [parent button-row]
                     [label "1"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-1))]
                     ))

(define button2 (new button%
                     [parent button-row]
                     [label "2"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-2))]
                     ))

(define button3 (new button%
                     [parent button-row]
                     [label "3"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-3))]
                     ))

(define button4 (new button%
                     [parent button-row]
                     [label "4"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-4))]
                     ))

(define button5 (new button%
                     [parent button-row]
                     [label "5"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-5))]
                     ))

(define button6 (new button%
                     [parent button-row]
                     [label "6"]
                     [min-height 25]
                     ;[horiz-margin 5]
                     [font (make-object font% 12 'default 'normal)]
                     [callback (λ (b e) (place-piece-column-6))]
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
(define reset-button-win-1 (new button%
                                [parent win-window-1]
                                [label "New Game"]
                                [vert-margin 10]
                                [font (make-object font% 12 'default 'normal)]
                                [callback (λ (b e) (start-game board) (send win-window-1 show #f))]
                                ))

(define reset-button-win-2 (new button%
                                [parent win-window-2]
                                [label "New Game"]
                                [vert-margin 10]
                                [font (make-object font% 12 'default 'normal)]
                                [callback (λ (b e) (start-game board) (send win-window-2 show #f))]
                                ))

(define reset-button-draw (new button%
                               [parent draw-window]
                               [label "New Game"]
                               [vert-margin 10]
                               [font (make-object font% 12 'default 'normal)]
                               [callback (λ (b e) (start-game board) (send draw-window show #f))]
                               ))

;Dev Console
(define dev-console (new horizontal-panel%
                         [parent main-window]
                         [alignment (list 'center 'center)]
                         [min-height 25]
                         ))
(define dev1 (new button%
                  [parent dev-console]
                  [label "Auto Win 1"]
                  [vert-margin 10]
                  [font (make-object font% 12 'default 'normal)]
                  [callback (λ (b e) (send win-window-1 show #t))]
                  ))

(define dev-2 (new button%
                   [parent dev-console]
                   [label "Auto Win 2"]
                   [vert-margin 10]
                   [font (make-object font% 12 'default 'normal)]
                   [callback (λ (b e) (send win-window-2 show #t))]
                   ))

(define dev-3 (new button%
                   [parent dev-console]
                   [label "Auto Draw"]
                   [vert-margin 10]
                   [font (make-object font% 12 'default 'normal)]
                   [callback (λ (b e) (send draw-window show #t))]
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

;set all slots to blank and the won boolean to false and the turn-marker to 1
;button => array => empty index
;array => message%s
;array => winstate (if no, change turn-marker to the other value and unflip turn-done boolean)
; (if yes, display winscreen and then after a pause run the start state initialising function


(define game-won #f)
(define game-draw #f)
(define turn-marker 1)
;(define turn-done #f)

;reads the board array and maps it to the GUI
(define array-reflect (λ ()
                        ;Row 0
                        (cond
                          ;0,0
                          ((equal? (vector-ref (vector-ref board 0) 0) 0)
                           (send slot-0-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 0) 1)
                           (send slot-0-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 0) 2)
                           (send slot-0-0 set-label yellow))
                          )
                        (cond
                          ;1,0
                          ((equal? (vector-ref (vector-ref board 0) 1) 0)
                           (send slot-1-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 1) 1)
                           (send slot-1-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 1) 2)
                           (send slot-1-0 set-label yellow))
                          )
                        (cond
                          ;2,0
                          ((equal? (vector-ref (vector-ref board 0) 2) 0)
                           (send slot-2-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 2) 1)
                           (send slot-2-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 2) 2)
                           (send slot-2-0 set-label yellow))
                          )
                        (cond
                          ;3,0
                          ((equal? (vector-ref (vector-ref board 0) 3) 0)
                           (send slot-3-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 3) 1)
                           (send slot-3-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 3) 2)
                           (send slot-3-0 set-label yellow))
                          )
                        (cond
                          ;4,0
                          ((equal? (vector-ref (vector-ref board 0) 4) 0)
                           (send slot-4-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 4) 1)
                           (send slot-4-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 4) 2)
                           (send slot-4-0 set-label yellow))
                          )
                        (cond
                          ;5,0
                          ((equal? (vector-ref (vector-ref board 0) 5) 0)
                           (send slot-5-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 5) 1)
                           (send slot-5-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 5) 2)
                           (send slot-5-0 set-label yellow))
                          )
                        (cond
                          ;6,0
                          ((equal? (vector-ref (vector-ref board 0) 6) 0)
                           (send slot-6-0 set-label blank))
                          ((equal? (vector-ref (vector-ref board 0) 6) 1)
                           (send slot-6-0 set-label red))
                          ((equal? (vector-ref (vector-ref board 0) 6) 2)
                           (send slot-6-0 set-label yellow))
                          )


                        ;Row 1
                        (cond
                          ;0,1
                          ((equal? (vector-ref (vector-ref board 1) 0) 0)
                           (send slot-0-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 0) 1)
                           (send slot-0-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 0) 2)
                           (send slot-0-1 set-label yellow))
                          )
                        (cond
                          ;1,1
                          ((equal? (vector-ref (vector-ref board 1) 1) 0)
                           (send slot-1-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 1) 1)
                           (send slot-1-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 1) 2)
                           (send slot-1-1 set-label yellow))
                          )
                        (cond
                          ;2,1
                          ((equal? (vector-ref (vector-ref board 1) 2) 0)
                           (send slot-2-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 2) 1)
                           (send slot-2-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 2) 2)
                           (send slot-2-1 set-label yellow))
                          )
                        (cond
                          ;3,1
                          ((equal? (vector-ref (vector-ref board 1) 3) 0)
                           (send slot-3-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 3) 1)
                           (send slot-3-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 3) 2)
                           (send slot-3-1 set-label yellow))
                          )
                        (cond
                          ;4,1
                          ((equal? (vector-ref (vector-ref board 1) 4) 0)
                           (send slot-4-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 4) 1)
                           (send slot-4-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 4) 2)
                           (send slot-4-1 set-label yellow))
                          )
                        (cond
                          ;5,1
                          ((equal? (vector-ref (vector-ref board 1) 5) 0)
                           (send slot-5-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 5) 1)
                           (send slot-5-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 5) 2)
                           (send slot-5-1 set-label yellow))
                          )
                        (cond
                          ;6,1
                          ((equal? (vector-ref (vector-ref board 1) 6) 0)
                           (send slot-6-1 set-label blank))
                          ((equal? (vector-ref (vector-ref board 1) 6) 1)
                           (send slot-6-1 set-label red))
                          ((equal? (vector-ref (vector-ref board 1) 6) 2)
                           (send slot-6-1 set-label yellow))
                          )


                        ;Row 2
                        (cond
                          ;0,2
                          ((equal? (vector-ref (vector-ref board 2) 0) 0)
                           (send slot-0-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 0) 1)
                           (send slot-0-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 0) 2)
                           (send slot-0-2 set-label yellow))
                          )
                        (cond
                          ;1,2
                          ((equal? (vector-ref (vector-ref board 2) 1) 0)
                           (send slot-1-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 1) 1)
                           (send slot-1-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 1) 2)
                           (send slot-1-2 set-label yellow))
                          )
                        (cond
                          ;2,2
                          ((equal? (vector-ref (vector-ref board 2) 2) 0)
                           (send slot-2-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 2) 1)
                           (send slot-2-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 2) 2)
                           (send slot-2-2 set-label yellow))
                          )
                        (cond
                          ;3,2
                          ((equal? (vector-ref (vector-ref board 2) 3) 0)
                           (send slot-3-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 3) 1)
                           (send slot-3-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 3) 2)
                           (send slot-3-2 set-label yellow))
                          )
                        (cond
                          ;4,2
                          ((equal? (vector-ref (vector-ref board 2) 4) 0)
                           (send slot-4-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 4) 1)
                           (send slot-4-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 4) 2)
                           (send slot-4-2 set-label yellow))
                          )
                        (cond
                          ;5,2
                          ((equal? (vector-ref (vector-ref board 2) 5) 0)
                           (send slot-5-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 5) 1)
                           (send slot-5-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 5) 2)
                           (send slot-5-2 set-label yellow))
                          )
                        (cond
                          ;6,2
                          ((equal? (vector-ref (vector-ref board 2) 6) 0)
                           (send slot-6-2 set-label blank))
                          ((equal? (vector-ref (vector-ref board 2) 6) 1)
                           (send slot-6-2 set-label red))
                          ((equal? (vector-ref (vector-ref board 2) 6) 2)
                           (send slot-6-2 set-label yellow))
                          )



                        ;Row 3
                        (cond
                          ;0,3
                          ((equal? (vector-ref (vector-ref board 3) 0) 0)
                           (send slot-0-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 0) 1)
                           (send slot-0-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 0) 2)
                           (send slot-0-3 set-label yellow))
                          )
                        (cond
                          ;1,3
                          ((equal? (vector-ref (vector-ref board 3) 1) 0)
                           (send slot-1-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 1) 1)
                           (send slot-1-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 1) 2)
                           (send slot-1-3 set-label yellow))
                          )
                        (cond
                          ;2,3
                          ((equal? (vector-ref (vector-ref board 3) 2) 0)
                           (send slot-2-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 2) 1)
                           (send slot-2-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 2) 2)
                           (send slot-2-3 set-label yellow))
                          )
                        (cond
                          ;3,3
                          ((equal? (vector-ref (vector-ref board 3) 3) 0)
                           (send slot-3-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 3) 1)
                           (send slot-3-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 3) 2)
                           (send slot-3-3 set-label yellow))
                          )
                        (cond
                          ;4,3
                          ((equal? (vector-ref (vector-ref board 3) 4) 0)
                           (send slot-4-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 4) 1)
                           (send slot-4-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 4) 2)
                           (send slot-4-3 set-label yellow))
                          )
                        (cond
                          ;5,3
                          ((equal? (vector-ref (vector-ref board 3) 5) 0)
                           (send slot-5-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 5) 1)
                           (send slot-5-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 5) 2)
                           (send slot-5-3 set-label yellow))
                          )
                        (cond
                          ;6,3
                          ((equal? (vector-ref (vector-ref board 3) 6) 0)
                           (send slot-6-3 set-label blank))
                          ((equal? (vector-ref (vector-ref board 3) 6) 1)
                           (send slot-6-3 set-label red))
                          ((equal? (vector-ref (vector-ref board 3) 6) 2)
                           (send slot-6-3 set-label yellow))
                          )


                        ;Row 4
                        (cond
                          ;0,4
                          ((equal? (vector-ref (vector-ref board 4) 0) 0)
                           (send slot-0-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 0) 1)
                           (send slot-0-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 0) 2)
                           (send slot-0-4 set-label yellow))
                          )
                        (cond
                          ;1,4
                          ((equal? (vector-ref (vector-ref board 4) 1) 0)
                           (send slot-1-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 1) 1)
                           (send slot-1-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 1) 2)
                           (send slot-1-4 set-label yellow))
                          )
                        (cond
                          ;2,4
                          ((equal? (vector-ref (vector-ref board 4) 2) 0)
                           (send slot-2-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 2) 1)
                           (send slot-2-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 2) 2)
                           (send slot-2-4 set-label yellow))
                          )
                        (cond
                          ;3,4
                          ((equal? (vector-ref (vector-ref board 4) 3) 0)
                           (send slot-3-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 3) 1)
                           (send slot-3-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 3) 2)
                           (send slot-3-4 set-label yellow))
                          )
                        (cond
                          ;4,4
                          ((equal? (vector-ref (vector-ref board 4) 4) 0)
                           (send slot-4-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 4) 1)
                           (send slot-4-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 4) 2)
                           (send slot-4-4 set-label yellow))
                          )
                        (cond
                          ;5,4
                          ((equal? (vector-ref (vector-ref board 4) 5) 0)
                           (send slot-5-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 5) 1)
                           (send slot-5-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 5) 2)
                           (send slot-5-4 set-label yellow))
                          )
                        (cond
                          ;6,4
                          ((equal? (vector-ref (vector-ref board 4) 6) 0)
                           (send slot-6-4 set-label blank))
                          ((equal? (vector-ref (vector-ref board 4) 6) 1)
                           (send slot-6-4 set-label red))
                          ((equal? (vector-ref (vector-ref board 4) 6) 2)
                           (send slot-6-4 set-label yellow))
                          )


                        ;Row 5
                        (cond
                          ;0,5
                          ((equal? (vector-ref (vector-ref board 5) 0) 0)
                           (send slot-0-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 0) 1)
                           (send slot-0-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 0) 2)
                           (send slot-0-5 set-label yellow))
                          )
                        (cond
                          ;1,5
                          ((equal? (vector-ref (vector-ref board 5) 1) 0)
                           (send slot-1-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 1) 1)
                           (send slot-1-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 1) 2)
                           (send slot-1-5 set-label yellow))
                          )
                        (cond
                          ;2,5
                          ((equal? (vector-ref (vector-ref board 5) 2) 0)
                           (send slot-2-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 2) 1)
                           (send slot-2-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 2) 2)
                           (send slot-2-5 set-label yellow))
                          )
                        (cond
                          ;3,5
                          ((equal? (vector-ref (vector-ref board 5) 3) 0)
                           (send slot-3-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 3) 1)
                           (send slot-3-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 3) 2)
                           (send slot-3-5 set-label yellow))
                          )
                        (cond
                          ;4,5
                          ((equal? (vector-ref (vector-ref board 5) 4) 0)
                           (send slot-4-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 4) 1)
                           (send slot-4-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 4) 2)
                           (send slot-4-5 set-label yellow))
                          )
                        (cond
                          ;5,5
                          ((equal? (vector-ref (vector-ref board 5) 5) 0)
                           (send slot-5-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 5) 1)
                           (send slot-5-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 5) 2)
                           (send slot-5-5 set-label yellow))
                          )
                        (cond
                          ;6,5
                          ((equal? (vector-ref (vector-ref board 5) 6) 0)
                           (send slot-6-5 set-label blank))
                          ((equal? (vector-ref (vector-ref board 5) 6) 1)
                           (send slot-6-5 set-label red))
                          ((equal? (vector-ref (vector-ref board 5) 6) 2)
                           (send slot-6-5 set-label yellow))
                          )
                        )
  )

;Initialise start state function
(define start-game (λ (x)
                     (set! board (vector
                                  (vector 0 0 0 0 0 0 0) ;row/panel 0
                                  (vector 0 0 0 0 0 0 0) ;row/panel 1
                                  (vector 0 0 0 0 0 0 0) ;row/panel 2
                                  (vector 0 0 0 0 0 0 0) ;row/panel 3
                                  (vector 0 0 0 0 0 0 0) ;row/panel 4
                                  (vector 0 0 0 0 0 0 0) ;row/panel 5
                                  ))
                     (set! turn-marker 1)
                     (array-reflect)
                     )
  )

;General function for placing a piece down. Confirms that the current player has not placed
;a piece yet this turn and whose turn it is and that the game has not ended, then checks for
;the next availible slot in the selected column and inserts the appropriate coloured piece in
;that slot
(define place-piece (λ (board column)
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
                              
                           (#t)
                           )
                         (set! turn-marker 2)
                         (send play-title set-label "Player 2's Turn")
                         )
                           
                        ((equal? turn-marker 2)
                         (cond
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

                           (#t)
                           )
   
                         (set! turn-marker 1)
                         (send play-title set-label "Player 1's Turn")
                         )
                        (#t)
                        )
                      )
  )

(define place-piece-column-0 (λ ()
                               (place-piece board 0)
                               (array-reflect)))
  
(define place-piece-column-1 (λ ()
                               (place-piece board 1)
                               (array-reflect)))

(define place-piece-column-2 (λ ()
                               (place-piece board 2)
                               (array-reflect)))

(define place-piece-column-3 (λ ()
                               (place-piece board 3)
                               (array-reflect)))

(define place-piece-column-4 (λ ()
                               (place-piece board 4)
                               (array-reflect)))

(define place-piece-column-5 (λ ()
                               (place-piece board 5)
                               (array-reflect)))

(define place-piece-column-6 (λ ()
                               (place-piece board 6)
                               (array-reflect)))


;code to check for wins

;(define check-state (λ ()
;                      (check-win-h-red)
;                      (check-win-h-yellow)
;                      (check-win-v-red)
;                      (check-win-v-yellow)
;                      (check-win-d-red)
;                      (check-win-d-yellow)
;                      (check-draw)
;                      ))

(define check-win-h-red (λ ()
                          (for [(i '(0 1 2 3))]
                            (cond
                              ((and
                                (equal? (vector-ref (vector-ref board 0) i) 1)
                                (equal? (vector-ref (vector-ref board 0) (+ 1 i)) 1)
                                (equal? (vector-ref (vector-ref board 0) (+ 2 i)) 1)
                                (equal? (vector-ref (vector-ref board 0) (+ 3 i)) 1))
                               (send win-window-1 show #t))
                              
                              ((and
                                (equal? (vector-ref (vector-ref board 1) (+ 1 i)) 1)
                                (equal? (vector-ref (vector-ref board 1) (+ 1 i)) 1)
                                (equal? (vector-ref (vector-ref board 1) (+ 1 i)) 1)
                                (equal? (vector-ref (vector-ref board 1) (+ 1 i)) 1))
                               (send win-window-1 show #t)
                              
                               ((and
                                 (equal? (vector-ref (vector-ref board 2) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 2) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 2) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 2) (+ 1 i)) 1))
                                (send win-window-1 show #t))
                              
                               ((and
                                 (equal? (vector-ref (vector-ref board 3) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 3) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 3) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 3) (+ 1 i)) 1))
                                (send win-window-1 show #t))
                              
                               ((and
                                 (equal? (vector-ref (vector-ref board 4) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 4) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 4) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 4) (+ 1 i)) 1))
                                (send win-window-1 show #t))
                              
                               ((and
                                 (equal? (vector-ref (vector-ref board 5) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 5) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 5) (+ 1 i)) 1)
                                 (equal? (vector-ref (vector-ref board 5) (+ 1 i)) 1))
                                (send win-window-1 show #t))
                               (#t (print "Player 1 has not won yet!"))
                               )))))


                          ;(define check-win-h-yellow)


                          ;(define check-win-v-red)


                          ;(define check-win-v-yellow)


                          ;(define check-win-d-red)


                          ;(define check-win-d-yellow)

                          