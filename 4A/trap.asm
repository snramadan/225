
        .orig x3300        

        LEA R0, ADDR

LOOP    GETC            ;take in character
        STR R0, R0, #0 
        ADD R0, R0, #1  ;increment address
        BRnp LOOP

               

ADDR    .FILL x3300
        .end
       
