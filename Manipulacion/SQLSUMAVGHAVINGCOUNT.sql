----- FUNCIONES MAX MIN SUM AVG COUNT HAVING  ----

-- MAX MIN muestra el mayor o menor valor de una columna

SELECT * FROM PAGO

SELECT MAX (fecha) FROM PAGO

SELECT MIN (importe) FROM PAGO
SELECT MAX (importe) FROM PAGO


--SUM suma la columna
SELECT SUM(importe) AS SUMA_IMPORTES FROM PAGO 
-- a cada elemento fila le suma 20 y luego suma toda la columna
SELECT SUM(importe +20) AS SUMA_IMPORTES FROM PAGO 
-- suma toda la columna y luego al total le suma 20
SELECT SUM(importe)+20 AS SUMA_TOTAL FROM PAGO 

---- FUNCION AVG ----
-- Promedio de los campos de una columna

SELECT AVG(importe) as Promedio_Importe from PAGO
SELECT AVG(importe+20) as Promedio_Importe from PAGO
SELECT AVG(importe)+20 as Promedio_Importe from PAGO


--- FUNCION COUNT
--Cuenta la cantidad de filas que tiene una columna

SELECT COUNT(*) FROM Paciente1
SELECT COUNT(idpaciente) from Paciente1
SELECT COUNT(idpaciente) FROM Paciente1 WHERE apellido = 'Pérez'


------------ HAVING 
--Trabaja junto con COUNT Y GROUP BY.
--Filtra un conjunto de registros dando como resultado un grupo de registros

select * from turno

insert into turno values('20190101 12:00', 3,'obs')
insert into turno values('20190205 10:00', 5,'obs')
insert into turno values('20190215 11:00', 3,'obs')
insert into turno values('20190329 09:00', 4,'obs')
insert into turno values('20190320 10:00', 4,'obs')
insert into turno values('20190415 09:00', 6,'obs')
insert into turno values('20190520 10:00', 7,'obs')

SELECT idEstado FROM Turno GROUP BY idEstado HAVING COUNT( idEstado) >2
