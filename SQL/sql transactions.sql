BEGIN;
	SELECT * FROM futrzaki;
		
	INSERT INTO futrzaki VALUES(5,'kraken', '0001-01-01', 9999);
	
	SAVEPOINT save;
	
	INSERT INTO futrzaki VALUES(3,'wielka stopa', '1900-09-30', 1000);
	
	ROLLBACK TO SAVEPOINT save;

	INSERT INTO futrzaki VALUES(4,'krolik', '1934-07-30', 10000);
	
	SELECT * FROM futrzaki;
END;



BEGIN;
	SELECT gatunek_futrzaka, DATEDIFF(CURDATE(), data_urodzenia)/365, cena_wykupu FROM futrzaki;

	SAVEPOINT punkt_wejsciowy;

	UPDATE futrzaki
	SET cena_wykupu = cena_wykupu * 1.1
	WHERE DATEDIFF(CURDATE(), data_urodzenia) > 10000;
	
	SELECT gatunek_futrzaka, DATEDIFF(CURDATE(), data_urodzenia)/365, cena_wykupu FROM futrzaki;

	ROLLBACK TO SAVEPOINT punkt_wejsciowy;
	
	
	UPDATE futrzaki
	SET cena_wykupu = cena_wykupu * 1.05
	WHERE DATEDIFF(CURDATE(), data_urodzenia) < 10000;
	
	SELECT gatunek_futrzaka, round(DATEDIFF(CURDATE(), data_urodzenia)/365,2), cena_wykupu FROM futrzaki;
	
	
	
	
	COMMIT;
	
END;