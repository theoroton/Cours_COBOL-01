	IDENTIFICATION DIVISION.
	PROGRAM-ID. 2DARRAYS.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 PRODUCTS-TAB.
		05 STORE-ID	OCCURS 3 TIMES.
			10 PRODUCT OCCURS 5 TIMES PIC 9(08).
	77 WS-TIME PIC 9(08).
	77 I PIC 9(08).
	77 J PIC 9(08).
	
	PROCEDURE DIVISION.
		ACCEPT WS-TIME FROM TIME.
		DISPLAY "Tableau à 2 dimensions :"
		PERFORM PRODUCT-PARA VARYING I FROM 1 BY 1 UNTIL I > 3
			AFTER J FROM 1 BY 1 UNTIL J > 5.
			STOP RUN.

	PRODUCT-PARA.
		MOVE WS-TIME TO PRODUCT(I,J).
		DISPLAY "Produit : (" I "," J ") : " PRODUCT(I, J).
		ADD 1 TO WS-TIME.