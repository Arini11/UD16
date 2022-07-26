SELECT apellidos FROM empleados;
SELECT DISTINCT apellidos FROM empleados;
SELECT * FROM empleados WHERE apellidos = 'Smith';
SELECT * FROM empleados WHERE apellidos = 'Smith' AND apellidos = 'Rogers';
SELECT * FROM empleados WHERE departamento = 14;
SELECT * FROM empleados WHERE departamento IN(37,77);
SELECT * FROM empleados WHERE apellidos LIKE 'P%';
SELECT sum(presupuesto) FROM departamentos;
SELECT count(*),departamento FROM empleados GROUP BY departamento;
SELECT * FROM empleados AS a
	INNER JOIN departamentos AS b ON a.departamento = b.codigo;
SELECT a.nombre,a.apellidos,b.nombre,b.presupuesto FROM empleados AS a
	INNER JOIN departamentos AS b ON a.departamento = b.codigo;
SELECT a.nombre,a.apellidos FROM empleados AS a
	INNER JOIN departamentos AS b ON a.departamento = b.codigo
    WHERE b.presupuesto > 60000;
SELECT * FROM departamentos WHERE presupuesto > (SELECT avg(presupuesto) FROM departamentos);
SELECT nombre FROM departamentos WHERE codigo IN ( SELECT departamento FROM empleados GROUP BY departamento HAVING COUNT(*) > 2 );
