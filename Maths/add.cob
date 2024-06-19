	IDENTIFICATION DIVISION.
	PROGRAM-ID. ADD.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 GP-1.
		02 A PIC 9(2) VALUE 50.
		02 B PIC 9(2) VALUE 60.
		02 C PIC 9(2).
		02 D PIC 9(3).
		02 E PIC 9(2)V99.
		02 F PIC 9(2)V9.
		
	PROCEDURE DIVISION.
	MAIN-PARA.
		DISPLAY "Addition Simple".
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		ADD A TO B.
		DISPLAY "Nouvelle valeur de B : " B.
	
		DISPLAY "".
		DISPLAY "Ajout 100 a B avec erreur de taille".
		DISPLAY "Valeur de B : " B.
		ADD 100 TO B
			ON SIZE ERROR
			DISPLAY "Erreur de taille".
			
		DISPLAY "".
		DISPLAY "Ajout 10 a A sans erreur de taille".
		DISPLAY "Valeur de A : " A.
		ADD 10 TO A
			NOT ON SIZE ERROR
			DISPLAY "Pas d'erreur de taille".
		
		DISPLAY "".
		DISPLAY "Ajout A a B et resultat dans  C et D".
		DISPLAY "Valeur de A : " A.
		DISPLAY "Valeur de B : " B.
		ADD A TO B GIVING C D.
		DISPLAY "Valeur de C : " C.
		DISPLAY "Valeur de D : " D.
		
		DISPLAY "".
		DISPLAY "Ajout de 9.38 a 7.49 dans E et F".
		ADD 9.38 TO 7.49 GIVING E F.
		DISPLAY "Valeur de E : " E.
		DISPLAY "Valeur de F : " F.
		
				DISPLAY "".
		DISPLAY "Ajout de 9.38 a 7.49 dans E et F avec arrondi".
		ADD 9.38 TO 7.49 GIVING E F ROUNDED.
		DISPLAY "Valeur de E : " E.
		DISPLAY "Valeur de F : " F.
		
	STOP RUN.