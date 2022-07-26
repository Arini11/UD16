SELECT nombre FROM articulos;
SELECT nombre, precio FROM articulos;
SELECT nombre FROM articulos WHERE precio <= 200;
SELECT * FROM articulos WHERE precio BETWEEN 60 AND 120;
SELECT nombre, precio*166.386 FROM articulos;
SELECT avg(precio) FROM articulos;
SELECT avg(precio) FROM articulos WHERE codigo=2;
SELECT count(*) FROM articulos WHERE precio>=180;
SELECT nombre, precio FROM articulos WHERE precio>=180 ORDER BY precio DESC, nombre ASC;
SELECT * FROM articulos AS a 
	INNER JOIN fabricantes AS b ON a.fabricante = b.codigo;
SELECT a.nombre,a.precio,b.nombre FROM articulos AS a 
	INNER JOIN fabricantes AS b ON a.fabricante = b.codigo;
SELECT avg(a.precio) AS PrecioMedio,b.codigo FROM articulos AS a 
	INNER JOIN fabricantes AS b ON a.fabricante = b.codigo
    GROUP BY a.codigo;
SELECT avg(a.precio) AS PrecioMedio, b.nombre FROM articulos AS a
	INNER JOIN fabricantes AS b ON a.fabricante = b.codigo
    GROUP BY b.nombre;	
SELECT b.nombre FROM articulos AS a
	INNER JOIN fabricantes AS b ON a.fabricante = b.codigo
    GROUP BY b.nombre HAVING avg(precio) >= 150;
SELECT nombre,precio FROM articulos
	WHERE precio=(SELECT min(precio) FROM articulos);
SELECT a.nombre,a.precio,b.nombre AS Proveedor FROM articulos AS a
	INNER JOIN fabricantes AS b ON a.fabricante = b.codigo
	WHERE precio=(SELECT max(precio) FROM articulos);
INSERT INTO articulos values(11, 'altavozes', 70, 2);
UPDATE articulos SET nombre = 'impresora láser' WHERE codigo = 8;
UPDATE articulos SET precio = precio*0.9;
UPDATE articulos SET precio = precio-10 WHERE precio >= 120;
