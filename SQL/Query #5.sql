delimiter $$
CREATE OR REPLACE TRIGGER spojnosc
BEFORE
UPDATE ON bilet
FOR EACH ROW
BEGIN

	if NEW.id_biletu IS NULL then
		SET NEW.id_biletu = OLD.id_biletu;
	END if;
	
END $$
delimiter ;

SELECT * FROM bilet;
UPDATE bilet
	SET id_biletu = NULL
	WHERE id_biletu = 1;
SELECT * FROM bilet;



delimiter $$
CREATE OR REPLACE TRIGGER komunikat
BEFORE
INSERT ON bilet
FOR EACH ROW
BEGIN
	if NEW.id_biletu = NULL then
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Siema mordo, tego nie można zrobić..';
	else
		SET NEW.id_biletu = NEW.id_biletu + 100;
	END if;
	
END $$
delimiter ;

INSERT INTO bilet VALUES(NULL , 100, 100);



delimiter $$
CREATE OR REPLACE PROCEDURE wstawianie(IN id INT, IN ix INT, IN iy int)
BEGIN
	DECLARE i int DEFAULT 1;
	while i <= 5 do
		INSERT INTO bilet VALUES (id + i , ix + i,iy + i);
		SET i = i+1;
	END while;
END $$
delimiter ;

CALL wstawianie(1,1,1);
SELECT * FROM bilet

DROP table bilet;

CREATE TABLE bilet (
id_biletu INT PRIMARY KEY,
id_sali INT,
miejsce INT



);



delimiter $$
CREATE OR REPLACE TRIGGER pyszard
BEFORE
INSERT ON klient
FOR EACH ROW
BEGIN 
	if LEFT(NEW.email, LOCATE('.', NEW.email - 1)) = 'Pyszard' then
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = ' to nie imiw tylko styl zycia';
	END if;
	
END $$

INSERT INTO klient VALUES('Pyszard.pyssa#sdf.pl', '12345', 'ryszard', 'pyssa', '1990-03-03')









