; Saba Ramadan
; Assignment 5

.ORIG	x3000

        LD      R0, T
        LD      R6, TL
        STR     R6, R0, #0
        LD      R0, I
        LD      R6, IL
        STR     R6, R0, #0
        LD      R6, STCKPt

LOOP	TRAP	x26  ; get char
	TRAP	x21  ; print char to screen
	TRAP	x26  ; get char
	TRAP	x21  ; print char to screen
	TRAP	x26  ; get char
	TRAP	x21  ; print char to screen
	TRAP	x26  ; get char
	TRAP	x21  ; print char to screen
	TRAP	x26  ; get char
	TRAP	x21  ; print char to screen
	LEA	R0, END_MSG
	PUTS
	BRnzp LOOP

TL      .FILL    x3300
IL      .FILL    x3500
T       .FILL    x0026
I       .FILL    x0180
STCKPt  .FILL    x3000
END_MSG .STRINGZ "\nSuccess!  Running again...\n"
        .END
