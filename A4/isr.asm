; Saba Ramadan
; Assignment 5

       .ORIG  x3500

       ST  R1, SR1
       LDI R0, KBDR
       AND R1, R1, #0        ; clears KBSR
       STI R1, KBSR
       LDI R1, UP01
       STR R1, R6, #0        ; stores UP02 into R6
       LD R1, SR1
       RTI                   ; returns to UP01

KBDR   .FILL  xFE02          ; keyboard data register
KBSR   .FILL  xFE00          ; keyboard status register
UP01   .FILL  x32FF          ; orig of UP01
SR1    .BLKW  1

       .END
