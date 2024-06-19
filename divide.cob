	IDENTIFICATION DIVISION.
	PROGRAM-ID. DIVIDE.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 GP-1.
		02 A PIC 9(2).
		02 B PIC 9(2).
		02 C PIC 9(4).
		02 D PIC 9(2).
		
	PROCEDURE DIVISION.
	MAIN-PARA.
		DISPLAY "Division B = B / A".
		MOVE 5 TO A.
		MOVE 60 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		DIVIDE A INTO B.
		DISPLAY "Nouvelle valeur de B : " B.
		
		DISPLAY ""
		DISPLAY "Division C = B / A".
		MOVE 5 TO A.
		MOVE 60 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		DIVIDE A INTO B GIVING C.
		DISPLAY "Valeur de C : " C.
		
		DISPLAY ""
		DISPLAY "Division C = A / B".
		MOVE 90 TO A.
		MOVE 30 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		DIVIDE A BY B GIVING C.
		DISPLAY "Valeur de C : " C.
		
		DISPLAY ""
		DISPLAY "Division C = A / B avec reste dans D".
		MOVE 90 TO A.
		MOVE 25 TO B.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		DIVIDE A BY B GIVING C REMAINDER D.
		DISPLAY "Valeur de C : " C.
		DISPLAY "Reste de D : " D.
		
	STOP RUN.