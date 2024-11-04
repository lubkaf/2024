

ZAD1
WITH spacje AS 
(
	SELECT 'Długość ze spacjami', sum(LENGTH(opis)) FROM film
),
bez_spacji AS
(
	SELECT 'Długość bez spacji', SUM(length(REPLACE(opis,' ',''))) FROM film
)

SELECT * FROM spacje
UNION
SELECT * FROM bez_spacji


ZAD2
WITH t1 AS(
	SELECT 
		ROW_NUMBER() OVER (ORDER BY f.rezyser desc) num,
		f.rezyser rez
	FROM film f
),
t2 AS(
	SELECT 
		ROW_NUMBER() OVER(ORDER BY RIGHT(k.email,1) ASC) num,
		right(k.email,2) letters
	FROM klient k 
	
)
SELECT t1.rez id, t2.letters FROM t1
JOIN t2 ON
t2.num = t1.num


ZAD3
WITH t1 AS(
	SELECT 
		'bilety',
		COUNT(b.id_biletu) lb
	FROM bilet b
),
t2 AS(
	SELECT 
		'sala',
		sum(miejsc) lm
	FROM sala
),
t3 AS(
	SELECT 
		'film',
		COUNT(tytul) lt
	FROM film
)



SELECT * FROM t1
UNION
SELECT * FROM t2
UNION
SELECT * FROM t3



