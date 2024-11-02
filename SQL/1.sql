ZAD1

SELECT * FROM futrzaki;

ZAD2

SELECT * FROM futrzaki f
WHERE f.data_urodzenia > '2015-08-07';


ZAD3
SELECT f.id_futrzaka, f.cena_wykupu FROM futrzaki f
WHERE f.cena_wykupu > 600
ORDER BY 2 ASC;

ZAD4
SELECT p.imie, p.nazwisko FROM pracownicy p
WHERE LENGTH(p.imie) > LENGTH(p.nazwisko);

ZAD5
SELECT op.imie, op.nazwisko  FROM opiekunowie op
WHERE op.imie IN('Arnold','Yuri','Neo')

ZAD6
SELECT DISTINCT(e.id_futrzaka), e.czy_jest FROM egzemplarze e
WHERE e.czy_jest = 'T'
ORDER BY 1 desc;

ZAD7
SELECT DISTINCT(oc.id_opiekuna), oc.data_odbioru FROM opieka_czasowa oc
WHERE oc.data_odbioru BETWEEN '2000-01-01' AND '2009-01-01'
ORDER BY 1 DESC

ZAD8
SELECT 
	oc.id_opiekuna 'id opiekuna',
	DATEDIFF(oc.data_zwrotu,oc.data_odbioru) 'ilosc dni'
FROM opieka_czasowa oc
ORDER BY 2 ASC


ZAD9
SELECT CONCAT(p.imie,' ',p.nazwisko) FROM pracownicy p


ZAD10
SELECT concat(LEFT(imie,1),'.',nazwisko) 'mr name' FROM pracownicy


ZAD11
SELECT f.gatunek_futrzaka, RIGHT(f.gatunek_futrzaka,3) from futrzaki f
ORDER BY 2 DESC


ZAD12
SELECT 
	LEFT(p.imie,1) 'pierwsza imienia', 
	RIGHT(p.nazwisko,1)  'ostatnia nazwiska'
FROM pracownicy p
ORDER BY 1


ZAD13
SELECT imie FROM pracownicy
WHERE LEFT(imie,1) = RIGHT(nazwisko,1)


ZAD14
SELECT p.nazwisko FROM pracownicy p
WHERE p.nazwisko LIKE '%g%';


ZAD15
SELECT p.imie FROM pracownicy p
WHERE p.imie LIKE '_c&' OR  p.imie LIKE '__r%'


ZAD16
SELECT CONCAT(imie,'.',nazwisko,'@email.com')FROM opiekunowie


ZAD17
SELECT * FROM futrzaki f
ORDER BY f.data_urodzenia aSC
LIMIT 3


ZAD18
SELECT 
	e.id_egzemplarza, 
	f.id_futrzaka, 
	f.gatunek_futrzaka 
FROM egzemplarze e
	JOIN futrzaki f ON
	f.id_futrzaka = e.id_futrzaka


ZAD19
SELECT 
	f.gatunek_futrzaka 
FROM futrzaki f
	JOIN egzemplarze e on
	e.id_futrzaka = f.id_futrzaka
WHERE 
	e.czy_jest = 'T';

	
ZAD20
SELECT 
	f.gatunek_futrzaka
FROM futrzaki f
	JOIN egzemplarze e on
	e.id_futrzaka = f.id_futrzaka
WHERE LEFT(f.data_urodzenia,4) < 2001;


ZAD21
SELECT 
	op.nazwisko,
	f.gatunek_futrzaka,
FROM opieka_czasowa oc
	JOIN opiekunowie op on
	op.id_opiekuna = oc.id_opiekuna
	JOIN egzemplarze e on
	oc.id_egzemplarza = e.id_egzemplarza
	JOIN futrzaki f on
	f.id_futrzaka = e.id_futrzaka

	
	
ZAD22
SELECT 
	concat(op.imie,' ',op.nazwisko),
	f.gatunek_futrzaka,
	f.data_urodzenia
FROM opieka_czasowa oc
	JOIN opiekunowie op on
	op.id_opiekuna = oc.id_opiekuna
	JOIN egzemplarze e on
	oc.id_egzemplarza = e.id_egzemplarza
	JOIN futrzaki f on
	f.id_futrzaka = e.id_futrzaka
WHERE 
	op.nazwisko = 'Lee';
	

ZAD23
SELECT 
	op.nazwisko,
	f.gatunek_futrzaka
FROM opieka_czasowa oc
	JOIN opiekunowie op on
	op.id_opiekuna = oc.id_opiekuna
	JOIN egzemplarze e on
	oc.id_egzemplarza = e.id_egzemplarza
	JOIN futrzaki f on
	f.id_futrzaka = e.id_futrzaka
ORDER BY oc.data_odbioru ASC
LIMIT 1


ZAD24
SELECT 
	op.nazwisko,
	f.gatunek_futrzaka
FROM opieka_czasowa oc
	JOIN opiekunowie op on
	op.id_opiekuna = oc.id_opiekuna
	JOIN egzemplarze e on
	oc.id_egzemplarza = e.id_egzemplarza
	JOIN futrzaki f on
	f.id_futrzaka = e.id_futrzaka
WHERE f.gatunek_futrzaka = 'Koala'


ZAD25
SELECT 
	f.gatunek_futrzaka
FROM futrzaki f
	JOIN egzemplarze e on
	f.id_futrzaka = e.id_egzemplarza
WHERE e.czy_jest = 'N';


ZAD26

SELECT 
	distinct(op.imie),
	op.nazwisko,
	f.gatunek_futrzaka
FROM opieka_czasowa oc
	JOIN opiekunowie op on
	op.id_opiekuna = oc.id_opiekuna
	JOIN egzemplarze e on
	oc.id_egzemplarza = e.id_egzemplarza
	JOIN futrzaki f on
	f.id_futrzaka = e.id_futrzaka
WHERE 
	oc.data_odbioru BETWEEN '1998-07-01' AND '2007-06-04'
	
	
ZAD27
SELECT
	op.imie, 
	op.nazwisko,
	f.gatunek_futrzaka
FROM opieka_czasowa oc
	JOIN opiekunowie op on
	op.id_opiekuna = oc.id_opiekuna
	JOIN egzemplarze e on
	oc.id_egzemplarza = e.id_egzemplarza
	JOIN futrzaki f on
	f.id_futrzaka = e.id_futrzaka
WHERE LEFT(op.imie,1) IN (LEFT(f.gatunek_futrzaka,1), RIGHT(f.gatunek_futrzaka,1))


ZAD28
SELECT LEFT(gatunek_futrzaka,1) 'pi', AVG(cena_wykupu) FROM futrzaki f
GROUP BY 1


ZAD29
SELECT AVG(cena_wykupu) FROM futrzaki f
WHERE YEAR(f.data_urodzenia) % 2 = 0


ZAD30
SELECT round(AVG(cena_wykupu),2) FROM futrzaki f
WHERE YEAR(f.data_urodzenia) % 2 != 0


ZAD31
SELECT COUNT(gatunek_futrzaka) FROM futrzaki;


ZAD32
SELECT f.gatunek_futrzaka, count(e.id_futrzaka) FROM egzemplarze e
JOIN futrzaki f ON
f.id_futrzaka = e.id_futrzaka
GROUP BY e.id_futrzaka


ZAD33
SELECT MIN(f.cena_wykupu) FROM futrzaki f
JOIN egzemplarze e ON
f.id_futrzaka = e.id_futrzaka
WHERE e.czy_jest = 'T'


ZAD34
SELECT YEAR(f.data_urodzenia), COUNT(f.id_futrzaka) FROM futrzaki f
GROUP BY 1
HAVING COUNT(f.id_futrzaka) > 1


ZAD35
SELECT 
	SUM(f.cena_wykupu) 
FROM futrzaki f
JOIN egzemplarze e ON
f.id_futrzaka = e.id_futrzaka
WHERE e.czy_jest = 'T'
GROUP BY (f.gatunek_futrzaka)


ZAD36
SELECT 
	LEFT(p.imie,1), 
	COUNT(p.id_pracownika) 
FROM pracownicy p
GROUP BY 1






























