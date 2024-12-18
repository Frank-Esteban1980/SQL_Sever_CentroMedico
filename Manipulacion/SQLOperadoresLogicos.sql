----------- OPERADORES LOGICOS ---
--Perminten concatenar varias condiciones dentro de la cláusula where
--AND la condición que tiene que cumplir el WHERE es doble ya que tiene condición1 and condición2, 
--sino cumple las dos no muestra nada

SELECT * FROM Paciente1

INSERT INTO Paciente1 VALUES('Miguel','Puertas', '02560512','Madrid','ESP','913021315','mp@hotmail.com', 'Pulmón','20200105 12:00')
INSERT INTO Paciente1 VALUES('Verónica','Mejía', '19861211','Toledo','ESP','952411315','vm@hotmail.com', 'Embarazo','20200215 12:00')
INSERT INTO Paciente1 VALUES('Cristina','García', '19890915','Oviedo','ESP','97596321','cg@gmail.com', 'Operar rodilla','20200415 10:00')
INSERT INTO Paciente1 VALUES('Josefina','Fernández', '19950809','Gijón','ESP','9759863','jf@hotmail.com', 'Diabetes','20200909 10:00')
INSERT INTO Paciente1 VALUES('Ana','Puertas', '19800902','Bogotá','COL','543021315','apu@hotmail.com', 'Fisura','20200611 9:00')
INSERT INTO Paciente1 VALUES('Dorlinda','Puertas', '19561202','Bogotá','COL','543021315','dor@hotmail.com', 'Cancer','20200705 11:00')


SELECT * FROM Paciente1

SELECT * FROM Paciente1 WHERE apellido='Puertas' 
SELECT * FROM Paciente1 WHERE apellido='Puertas' and nombre='Miguel'
SELECT * FROM Paciente1 WHERE apellido='Puertas' and idPais='COL'
SELECT * FROM Paciente1 WHERE apellido='Puertas' and idPais='ESP'
SELECT * FROM Paciente1 WHERE idPais='COL' and apellido='Escudero'

--OR muestra los registros si cumple una de las condiciones que lleva WHERE

SELECT * FROM Paciente1 WHERE apellido='Puertas' OR nombre='Miguel'
SELECT * FROM Paciente1 WHERE apellido='Hernández' OR  idPais='COL'
SELECT * FROM Paciente1 WHERE apellido='Puertas' OR  idPais='ARG'
SELECT * FROM Paciente1 WHERE idPais='COL' OR  apellido='Escudero'

-- IN filtrar por un grupo de valores que establecemos

SELECT * FROM TURNO

SELECT * FROM TURNO WHERE idEstado IN(2,1,3)

SELECT * FROM Paciente1

SELECT * FROM Paciente1 WHERE apellido IN('Escudero', 'Puertas', 'Garrigues')

--LIKE
--Permite filtrar por algún caracter que tenga el registro

SELECT * FROM Paciente1 WHERE nombre LIKE 'An%'
SELECT* FROM Paciente1 WHERE apellido LIKE'%er%'


-----NOT
--Muestra lo contrario de lo que se establezca en la condición

SELECT* FROM Paciente1 WHERE apellido NOT LIKE'%er%'
SELECT * FROM Paciente1 WHERE apellido NOT IN('Escudero', 'Puertas', 'Garrigues')

------ BETWEEN
--Busca registros que se encuentren en el rango de la condición

SELECT * FROM Turno WHERE fechaTurno BETWEEN '20190102' AND '20190201'
SELECT * FROM Turno WHERE fechaTurno BETWEEN '20190102' AND '20190301'
SELECT * FROM Turno WHERE fechaTurno BETWEEN '20190102' AND '20190501'

SELECT * FROM Paciente1 WHERE fNaciiento BETWEEN '19800101' AND '19891231'
SELECT * FROM Paciente1 WHERE nombre BETWEEN 'A' AND 'b'
SELECT * FROM Paciente1 WHERE nombre BETWEEN 'A' AND 'l' order by nombre
