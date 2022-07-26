SELECT * FROM almacenes;
SELECT * FROM cajas WHERE valor > 150;
SELECT DISTINCT contenido FROM cajas;
SELECT avg(valor) FROM cajas;
SELECT almacen,avg(valor) AS ValorMedio FROM cajas GROUP BY almacen;
SELECT almacen FROM cajas GROUP BY almacen HAVING avg(valor)>150;
SELECT a.numreferencia,b.lugar FROM cajas AS a
	INNER JOIN almacenes AS b ON a.almacen = b.codigo;
SELECT almacen,count(*) AS numCajas FROM cajas GROUP BY almacen;
SELECT codigo FROM almacenes WHERE capacidad IN (SELECT count(*) FROM cajas GROUP BY almacen HAVING count(*));
SELECT codigo FROM almacenes WHERE capacidad < (SELECT COUNT(*) FROM cajas WHERE Almacen = Codigo);
SELECT numreferencia FROM cajas WHERE almacen IN (SELECT codigo FROM almacenes WHERE lugar = 'Bilbao');
INSERT INTO almacenes VALUES(6,'Barcelona',3);
INSERT INTO cajas VALUES('H5RT','Papel',200,2);
UPDATE cajas SET valor = valor - valor*0.15;
UPDATE cajas AS a SET a.valor = a.valor - a.valor*0.20 WHERE a.valor > 
	(SELECT AVG(b.valor) FROM (SELECT * FROM cajas) AS b);
DELETE FROM cajas WHERE valor < 100;
DELETE FROM cajas WHERE almacen IN 
	(SELECT codigo FROM almacenes WHERE capacidad < (SELECT COUNT(b.numreferencia) FROM (SELECT * FROM cajas WHERE almacen = codigo) AS b));
