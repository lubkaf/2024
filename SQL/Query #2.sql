Z1

SET @JSON = '[
{"id": 1, "imie": "Jan", "nazwisko": "Kowalski", "zawod": "Informatyk"},
{"id": 2, "imie": "Anna", "nazwisko": "Nowak", "zawod": "Nauczyciel"},
{"id": 3, "imie": "Piotr", "nazwisko": "Wójcik", "zawod": "Lekarz"},
{"id": 4, "imie": "Marta", "nazwisko": "Kaczmarek", "zawod": "Inżynier"},
{"id": 5, "imie": "Michał", "nazwisko": "Lewandowski", "zawod": "Prawnik"},
{"id": 6, "imie": "Agnieszka", "nazwisko": "Wójcik", "zawod": "Dentysta"},
{"id": 7, "imie": "Krzysztof", "nazwisko": "Nowak", "zawod": "Architekt"},
{"id": 8, "imie": "Ewa", "nazwisko": "Zielińska", "zawod": "Psycholog"},
{"id": 9, "imie": "Tomasz", "nazwisko": "Kowalski", "zawod": "Nauczyciel"},
{"id": 10, "imie": "Natalia", "nazwisko": "Szymańska", "zawod": "Farmaceuta"}
]';


SELECT * FROM JSON_TABLE(
		@JSON, '$[*]' COLUMNS(
			id INT PATH '$.id', 
			imie VARCHAR(50) PATH '$.imie',
			nazwisko VARCHAR(50) PATH '$.nazwisko',
			zawod VARCHAR(50) PATH '$.zawod'
			)
	) AS pracownicy
	WHERE imie LIKE 'M%'
	;
	
	
	
CREATE OR REPLACE TABLE pracownicy(
	id INT PRIMARY KEY AUTO_INCREMENT,
	dane VARCHAR(255)
)
DELETE FROM pracownicy WHERE id IN(1,2)


LOAD data LOCAL INFILE
'C:\\Users\\Filip\\Downloads\\pracownicyJSON.json'
INTO TABLE pracownicy
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(@id,@imie,@nazwisko,@zawod)
SET dane = CONCAT(@id,@imie,@nazwisko,@zawod);


SELECT * FROM pracownicy 
WHERE JSON_CONTAINS(dane, '"Nauczyciel"', '$.zawod')

SELECT * 
FROM pracownicy 
WHERE JSON_CONTAINS(dane, JSON_OBJECT("zawod", "Nauczyciel"));















Tworzenie tabeli 'products'
CREATE or replace TABLE products (
id INT PRIMARY KEY,
name VARCHAR(255),
attributes JSON
);
-- Wstawianie przykładowych danych
INSERT INTO products (id, name, attributes) VALUES
(1, 'Product 1', '{"color": "red", "size": "medium"}'),
(2, 'Product 2', '{"color": "blue", "size": "large"}'),
(3, 'Product 3', '{"weight": "5kg", "size": "small"}');
-- Przykład zapytania wykorzystującego JSON_CONTAINS_PATH
SELECT id, name
FROM products
WHERE JSON_CONTAINS(attributes, '"large"', '$.size');

