ZAD1
SELECT nazwisko FROM pracownicy
UNION
SELECT nazwisko FROM opiekunowie
ORDER BY 1 


ZAD2
(SELECT 
	f.gatunek_futrzaka,
	f.id_futrzaka
FROM futrzaki f
JOIN karmienie k ON 
	k.id_futrzaka = f.id_futrzaka
JOIN pracownicy p ON
	p.id_pracownika = k.id_pracownika
WHERE p.nazwisko = 'Boczek')

intersect

(SELECT 
	f.gatunek_futrzaka,
	f.id_futrzaka
FROM futrzaki f
JOIN karmienie k ON 
	k.id_futrzaka = f.id_futrzaka
JOIN pracownicy p ON
	p.id_pracownika = k.id_pracownika
WHERE p.nazwisko = 'Pazura')


ZAD3
(SELECT 
	f.gatunek_futrzaka,
	f.id_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN opieka_czasowa oc ON 
	oc.id_egzemplarza = e.id_egzemplarza
JOIN opiekunowie op ON
	op.id_opiekuna = oc.id_opiekuna
WHERE op.nazwisko = 'Stallone')
intersect
(SELECT 
	f.gatunek_futrzaka,
	f.id_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN opieka_czasowa oc ON 
	oc.id_egzemplarza = e.id_egzemplarza
JOIN opiekunowie op ON
	op.id_opiekuna = oc.id_opiekuna
WHERE op.nazwisko = 'Andersson')


ZAD4
(SELECT 
	f.gatunek_futrzaka,
	f.id_futrzaka	
FROM futrzaki f
JOIN karmienie k ON 
	k.id_futrzaka = f.id_futrzaka
JOIN pracownicy p ON
	p.id_pracownika = k.id_pracownika
WHERE p.nazwisko IN('Geller','Pazura'))
EXCEPT
(SELECT 
	f.gatunek_futrzaka,
	f.id_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN opieka_czasowa oc ON 
	oc.id_egzemplarza = e.id_egzemplarza
JOIN opiekunowie op ON
	op.id_opiekuna = oc.id_opiekuna
WHERE op.nazwisko IN('Stallone','Lee'))
ORDER BY 2 DESC


ZAD5
(SELECT 
	f.gatunek_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
WHERE e.czy_jest = 'T')
EXCEPT
(SELECT 
	f.gatunek_futrzaka

FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN opieka_czasowa oc ON 
	oc.id_egzemplarza = e.id_egzemplarza
JOIN opiekunowie op ON
	op.id_opiekuna = oc.id_opiekuna)
	
	
ZAD6
(SELECT 
	f.gatunek_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
WHERE e.czy_jest = 'T')
except
(SELECT 
	f.gatunek_futrzaka

FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN opieka_czasowa oc ON 
	oc.id_egzemplarza = e.id_egzemplarza
JOIN opiekunowie op ON
	op.id_opiekuna = oc.id_opiekuna
WHERE DATEDIFF(oc.data_zwrotu, oc.data_odbioru) >= 471)


ZAD7

(SELECT
	e.id_egzemplarza,
	f.gatunek_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN opieka_czasowa oc ON 
	oc.id_egzemplarza = e.id_egzemplarza
JOIN opiekunowie op ON
	op.id_opiekuna = oc.id_opiekuna
WHERE LOWER(LEFT(op.nazwisko,1)) IN('a','b','c','d','e','f','g','h','i','j'))
intersect
(SELECT
	e.id_egzemplarza,
	f.gatunek_futrzaka
FROM futrzaki f
JOIN egzemplarze e ON
	e.id_futrzaka = f.id_futrzaka
JOIN karmienie k ON
	k.id_futrzaka = f.id_futrzaka
JOIN pracownicy p ON
	p.id_pracownika = k.id_pracownika
WHERE LOWER(LEFT(p.nazwisko,1)) IN('a','b','c','d','e','f','g','h','i','j'))


ZAD8
SELECT LEFT(gatunek_futrzaka,1) 'pi', AVG(cena_wykupu) FROM futrzaki f
GROUP BY 1


ZAD9
SELECT AVG(f.cena_wykupu) FROM futrzaki f
WHERE year(f.data_urodzenia) % 2 = 0


ZAD10
SELECT round(AVG(f.cena_wykupu),2) FROM futrzaki f
WHERE (year(f.data_urodzenia) % 4 = 0 AND year(f.data_urodzenia) % 100 != 0 )
OR (year(f.data_urodzenia) % 400 = 0)


ZAD11
SELECT 
	f.gatunek_futrzaka, COUNT(e.id_futrzaka)
FROM futrzaki f
JOIN egzemplarze e ON
e.id_futrzaka = f.id_futrzaka
GROUP BY f.id_futrzaka
ORDER BY 2 ASC


ZAD12
SELECT MIN(cena_wykupu) 'Najniższa cena' FROM futrzaki


ZAD13
SELECT 
	f.gatunek_futrzaka,
	COUNT(p.imie)
FROM futrzaki f
JOIN karmienie k ON
	k.id_futrzaka = f.id_futrzaka
JOIN pracownicy p ON
	p.id_pracownika = k.id_pracownika
GROUP BY 1
WITH ROLLUP


ZAD14
SELECT 
	YEAR(f.data_urodzenia), 
	COUNT(f.id_futrzaka)
FROM futrzaki f
GROUP BY 1
HAVING COUNT(f.id_futrzaka) > 1


ZAD15

SELECT 
	f.gatunek_futrzaka,
	SUM(f.cena_wykupu)
FROM futrzaki f
JOIN egzemplarze e ON
e.id_futrzaka = f.id_futrzaka
WHERE e.czy_jest = 'T'
GROUP BY 1
WITH ROLLUP


ZAD16
SELECT
	LEFT(p.imie,1),
	COUNT(p.imie)
FROM pracownicy p
GROUP BY 1











