delimiter $$

CREATE PROCEDURE promocja_futrzaki( IN znizka FLOAT)
BEGIN
	UPDATE futrzaki
	SET cena_wykupu = cena_wykupu * ((100 - znizka) / 100);

END $$


SELECT * FROM futrzaki;

CALL promocja_futrzaki(10);

SELECT * FROM futrzaki;


SHOW PROCEDURE STATUS LIKE 'promocja_futrzaki'



ZAD1

delimiter $$
CREATE or REPLACE PROCEDURE search_by_title(IN prompt VARCHAR(30))
BEGIN
	SELECT 
		tytul,
		id_filmu,
		rok_produkcji,
		rezyser,
		gatunek,
		opis  
	FROM film f
	WHERE LOWER(tytul) = LOWER(prompt);

END $$

CALL search_by_title('batMAN');




ZAD2

delimiter $$
CREATE OR REPLACE PROCEDURE longer_than (IN time_ INT)
BEGIN

	
	IF NOT EXISTS(
		SELECT * FROM film
		WHERE dlugosc_filmu > time_
	)then
		SELECT 'brak takiego filmu' komunikat;
	ELSE 
		SELECT * FROM film
		WHERE dlugosc_filmu > time_;
	END if;

END $$

CALL  longer_than(1000);



ZAd3
delimiter $$
CREATE OR REPLACE PROCEDURE search_by_name (IN imie VARCHAR(255))
BEGIN
	DECLARE i INT DEFAULT 1;
	DECLARE litera CHAR(1);
	DECLARE dlugosc INT DEFAULT CHAR_LENGTH(imie);
	
	SET imie = LOWER (imie);
	SET @query_ = 'SELECT * FROM film WHERE';
	
	while i<=dlugosc DO
		SET litera = SUBSTRING(imie, i,1);
		if i > 1 then
			SET @query_ = CONCAT(@query_, ' AND');
		END if;
		
		SET @query_ = CONCAT(@query_, ' LOWER(opis) LIKE ''%', litera, '%''');
		SET i = i+1;
	END while;
	
	PREPARE stmt FROM @query_;
	EXECUTE stmt;
END $$

CALL search_by_name('nie');



delimiter $$
CREATE OR REPLACE PROCEDURE add_room()
BEGIN

	DECLARE i INT;
	DECLARE seats INT;
	
	
	SELECT max(id_sali) + 1 INTO i FROM sala;
	
	SELECT MAX(miejsc) INTO seats
   FROM sala
   WHERE miejsc < (SELECT MAX(miejsc) FROM sala);
   
   SELECT seats AS druga_najwieksza_liczba_miejsc;
	
	INSERT INTO sala VALUES(i, seats+59);

END $$


CALL add_room();

zad8
delimiter $$
CREATE OR REPLACE function triangle_area(IN base INT, IN height INT )
RETURNS INT

BEGIN
	RETURN (base*height)/2;
END$$
	
SELECT triangle_area(3,4)



delimiter $$

CREATE OR REPLACE TRIGGER test
BEFORE INSERT on sala
FOR EACH ROW
begin
	if 
		NEW.miejsc <=0 
	then
 		set NEW.miejsc = 10;
	END if;

END $$

insert INTO sala VALUES(19, -100);


podawanie_danych_film
	
	

INSERT INTO film VALUES(null, Null, '1111', 'huj', 'huj', 12,'juh');





