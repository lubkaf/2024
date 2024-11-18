zad1
CALL search_movie('matrix');


zad2
delimiter $$
CREATE OR REPLACE PROCEDURE longer_than(IN len INT)
BEGIN

	if NOT EXISTS(
		SELECT * FROM film 
		WHERE dlugosc_filmu > len)
	then
		SELECT 'brak takiego filmu';
	ELSE
		SELECT * FROM film 
		WHERE dlugosc_filmu > len;
	
	END if;

END $$

CALL longer_than(1000)


zad3
delimiter $$
CREATE OR REPLACE PROCEDURE filter_by_name(IN imie VARCHAR(255))
BEGIN

	DECLARE i int DEFAULT 1;
	DECLARE litera CHAR(1) ;
	DECLARE dlugosc INT DEFAULT CHAR_LENGTH(imie);
	
	SET imie = LOWER(imie);
	SET @QUERY = 'select * from film where 1=1 ';
	
	WHILE i <= dlugosc DO
		SET litera = SUBSTRING(imie, i, 1);
		SET @QUERY = CONCAT(@QUERY, ' and lower(opis) like ''%', litera, '%''');
		SET i = i + 1;
	END WHILE;
	
	PREPARE stmt FROM @QUERY;
	EXECUTE stmt;
		
		
		
	

END $$

CALL filter_by_name('Tomasz')


DELIMITER $$

CREATE OR REPLACE PROCEDURE filter_by_name(IN imie VARCHAR(255))
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE litera CHAR(1);
    DECLARE dlugosc INT DEFAULT CHAR_LENGTH(imie);
    
    SET imie = LOWER(imie);  -- Zamiana na małe litery dla ignorowania wielkości
    SET @x = 'SELECT * FROM film WHERE 1=1';  -- Początkowe zapytanie
    
    WHILE i <= dlugosc DO
        SET litera = SUBSTRING(imie, i, 1);
        SET @x = CONCAT(@x, ' AND LOWER(opis) LIKE ''%', litera, '%''');  -- Dodawanie warunków do zapytania
        SET i = i + 1;
    END WHILE;
    
    -- Przygotowanie i wykonanie zapytania
    PREPARE stmt FROM @x;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;  -- Zwolnienie przygotowanego zapytania
    
END $$

DELIMITER ;


zad4

delimiter $$
CREATE OR REPLACE PROCEDURE dodaj_sale()
BEGIN

	DECLARE i INT;
	DECLARE size INT;

SELECT MAX(id_sali) INTO i FROM sala;

SELECT MAX(miejsc) INTO size FROM sala
WHERE miejsc < (SELECT MAX(miejsc) FROM sala);

INSERT INTO sala VALUES(i + 1, size);
SELECT * FROM sala;

END $$

CALL dodaj_sale();


zad5
delimiter $$
CREATE OR REPLACE PROCEDURE tabela(IN word1 VARCHAR(127), IN word2 VARCHAR(127))
BEGIN
	
	DECLARE nazwa_tabeli VARCHAR(255);
	SET nazwa_tabeli = CONCAT(word1, '_' ,word2);
	
	SET @zapytanie = CONCAT(
		'create table ', nazwa_tabeli, ' (
			id int primary key auto_increment,
			name varchar(50)
		)'
	
	
	);
	
	PREPARE stmt FROM @zapytanie;
	EXECUTE stmt;
END $$

CALL tabela('nie', 'dziala');



zad6
delimiter $$
CREATE OR REPLACE PROCEDURE zmiana_liter(IN slowo VARCHAR(255))
BEGIN


	DECLARE i INT DEFAULT 1;
	DECLARE litera CHAR(1);
	DECLARE dlugosc INT; 
	SET slowo = SUBSTRING_INDEX(slowo,' ',1);
	set dlugosc = CHARACTER_LENGTH(slowo);
	
	SET @QUERY = 'SELECT ''';
	while i <= dlugosc do
		SET litera = SUBSTRING(slowo, i, 1);
		if i % 2 = 0 then
			SET @QUERY = CONCAT(@QUERY, LOWER(litera));
		else
			SET @QUERY = CONCAT(@QUERY, UPPER(litera));
		END if;
		
		SET i = i +1;
	END while;
	
	SET @QUERY = CONCAT(@QUERY, ''' as slowo');
	
	PREPARE stmt FROM @QUERY;
	EXECUTE stmt;
	

END $$

CALL zmiana_liter('SADFGASFSF SDF SDFG');



CREATE OR REPLACE TRIGGER walidacja_film




