A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!
***
14. feladat
CREATE DATABASE __csudijo
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;
***
16. feladat
SELECT COUNT(*) as "etelek-szama" FROM termekek
WHERE(etel = 1);
***
17. feladat
SELECT termekek.nev, termekek.ar FROM termekek
INNER JOIN kategoriak ON kategoriak.id = termekek.kategoriaId
WHERE(kategoriak.nev = "Desszertek")
GROUP BY nev;
***
18. feladat
INSERT INTO `termekek`(`nev`, `ar`, `etel`, `kategoriaId`) VALUES ("Málnahabos pohárkrém",1090,1,6);
***
19. feladat
SELECT termekNev, SUM(mennyiseg) as 'mennyiseg' FROM rendelesek
INNER JOIN termekek ON termekek.id = rendelesek.termekId
WHERE(termekek.etel = 1)
GROUP BY termekNev
ORDER BY `mennyiseg` DESC
LIMIT 3;
***
20. feladat
SELECT ROUND(SUM(termekek.ar * rendelesek.mennyiseg),0) as brutto, ROUND(SUM(termekek.ar * rendelesek.mennyiseg * (1 - 1/ (1+rendelesek.afakulcs))), 0) as "afa" FROM termekek
INNER JOIN rendelesek ON termekek.id = rendelesek.termekId
