	IDENTIFICATION DIVISION.
	PROGRAM-ID. COMPUTE.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 GP-1.
		02 A PIC 9(2).
		02 B PIC 9(2).
		02 C PIC 9(2).
		02 D PIC 9(2).
		02 E PIC 9(2).
		
	PROCEDURE DIVISION.
	MAIN-PARA.
		DISPLAY "Calcul A = B - C".
		MOVE 15 TO B.
		MOVE 10 TO C.
		DISPLAY "Valeur de B : " B.
		DISPLAY "Valeur de C : " C.
		COMPUTE A = B - C.
		DISPLAY "Valeur de A : " A.
		
		DISPLAY ""
		DISPLAY "Calcul (A * B) / (D - C) avec arrondi".
		MOVE 5 TO A.
		MOVE 15 TO B.
		MOVE 10 TO C.
		MOVE 20 TO D.
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		DISPLAY "Valeur de C : " C.
		DISPLAY "Valeur de D : " D.
		COMPUTE E ROUNDED = (A * B) / (D - C).
		DISPLAY "Valeur de E : " E.

	STOP RUN.