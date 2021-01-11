
          .ORIG x3300

Q1        .STRINGZ  "\nWhat is your favorite Season?\n   1 - Fall\n   2 - Winter\n   3 - Spring\n   4 - Summer\n"
Q1Answ   .FILL    #2
         .FILL    #5
         .FILL    #8
         .FILL    #10

Q2    	 .STRINGZ  "\nWhat is your favorite Movie?\n   1 - Hocus Pocus\n   2 - Top Gun\n   3 - Princess Bride\n   4 - A Christmas Story\n"
Q2Answ   .FILL    #2
         .FILL    #10
         .FILL    #8
         .FILL    #5

Q3    	 .STRINGZ  "\nWho is your favorite Hoilday?\n   1 - Halloween\n   2 - Christmas\n   3 - Fourth of July\n   4 - Easter\n"
Q3Answ   .FILL    #2
         .FILL    #5
         .FILL    #10
         .FILL    #8

Result1	.STRINGZ  "\nBOO. I put a spell on you!!!"
Result2	.STRINGZ  "\nTis the season to be jolly. FA LA LA!!!!"
Result3	.STRINGZ  "\nSunshine is the best medicine."
Result4	.STRINGZ  "\nGood times and tan lines!!"

	.END
