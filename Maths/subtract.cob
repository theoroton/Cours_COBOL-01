	IDENTIFICATION DIVISION.
	PROGRAM-ID. SUBTRACT.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 GP-1.
		02 A PIC 9(2).
		02 B PIC 9(2).
		02 C PIC 9(2).
		
	PROCEDURE DIVISION.
	MAIN-PARA.
		DISPLAY "Soutraction B = B - A".
		MOVE 50 TO A.
		MOVE 60 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		SUBTRACT A FROM B.
		DISPLAY "Nouvelle valeur de B : " B.
	
		DISPLAY ""
		DISPLAY "Soutraction C = B - A".
		MOVE 50 TO A.
		MOVE 60 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		SUBTRACT A FROM B GIVING C.
		DISPLAY "Valeur de C : " C.
		
		DISPLAY ""
		DISPLAY "Soutractions C = C (B + A)".
		MOVE 20 TO A.
		MOVE 32 TO B.
		MOVE 94 TO c.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		DISPLAY "Valeur de C : " C.
		SUBTRACT A B FROM C.
		DISPLAY "Nouvelle valeur de C : " C.
		
	STOP RUN.