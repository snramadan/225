; Saba Ramadam
; Assignment 5

        .ORIG x3400

BEGIN   AND R1, R1, #0 ; reset R1 to 0
LOOP    ADD R1, R1, #1 ; add 1 to R1 each time
        BRzp    LOOP   ; if zero or positive then loop
        LD R0, OUTPUT  ; calls for *
        TRAP x21       ; exits out
        BRnzp BEGIN    ; restarts after * is outputed 
        HALT           ; ends 

OUTPUT  .FILL   x2A    ; * 

        .END         

