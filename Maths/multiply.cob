	IDENTIFICATION DIVISION.
	PROGRAM-ID. MULTIPLY.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 GP-1.
		02 A PIC 9(2).
		02 B PIC 9(2).
		02 C PIC 9(4).
		
	PROCEDURE DIVISION.
	MAIN-PARA.
		DISPLAY "Multiplication B = A * B".
		MOVE 50 TO A.
		MOVE 60 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		MULTIPLY A BY B.
		DISPLAY "Nouvelle valeur de B : " B.
	
		DISPLAY ""
		DISPLAY "Multiplication C = A * B".
		MOVE 50 TO A.
		MOVE 60 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		MULTIPLY A BY B GIVING C.
		DISPLAY "Valeur de C : " C.
		
	STOP RUN.