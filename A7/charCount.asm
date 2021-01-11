;Saba Ramadan
;Assignment 7

; R1 - link
; R2 - result
; R3 - temp 
; R4 - temp
; R5 - temp 
; R6 - pointer
; R7 - address loc

        .orig x3300

;stack initialization
        ADD R6, R6, #-1
        ADD R6, R6, #-1
        STR R7, R6, #0   
        ADD R6, R6, #-1
        STR R4, R6, #0
        ADD R1, R6, #-1
        ADD R6, R6, #-1

;get word and compare letters
        LDR R2, R4, #4
        LDR R2, R2, #0
        STR R2, R4, #0
        BRz DONE
        LDR R3, R1, #5
        NOT R3, R3
        ADD R3, R3, #1
        ADD R3, R3, R4
        BRz SAME
        BRnp DIFF

;increment result if letter is found   
SAME    AND R1, R1, #0
        ADD R1, R1, #1
        STR R1, R4, #0
        BRnzp REC

;clear R2
DIFF    ADD R1, R1, #0
        STR R1, R4, #0
        BRnzp REC

;recurse
REC     LDR R3, R4, #5
        ADD R6, R6, #-1
        STR R3, R6, #0
        LDR R1, R2, #4
        ADD R2, R2, #1
        ADD R6, R6, #-1
        STR R2, R6, #0
        LD  R1, TEMP
        JSRR R1
        LDR R5, R4, #0
        LDR R1, R6, #0
        ADD R5, R5, R1
        STR R5, R4, #0
        ADD R6, R6, #3

DONE    LDR R5, R4, #0
        STR R5, R4, #3
        ADD R6, R6, #1
        LDR R4, R6, #0
        ADD R6, R6, #1
        LDR R7, R6, #0
        ADD R6, R6, #1
        RET

TEMP   .FILL   x3300
       .END
