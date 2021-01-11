; Saba Ramadan
; Assignment 5

         .ORIG   x3300

         LD  R0, UP01
         STR R7, R0, #0   ; save PC from UP01
         LD  R0, INTER  ; loads interrupt
         STI R0, KBSR   ; saves KBSR into R0
         LD  R0, UP02   ; loads UP02 into R0
         JMP R0         ; jumps to RO where UP02 was loaded

UP01     .FILL   x32FF  ; hard-coded memory location of UP01 
INTER    .FILL   x4000  ; interrupt enable bit 14
KBSR     .FILL   xFE00  ; keyboard status register
UP02     .FILL   x3400  ; orig of UP02

         .END
