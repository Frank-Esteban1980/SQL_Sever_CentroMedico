------ MANIPULACIÓN DE REGISTROS DML con INSERT INTOy SELECT ----



SELECT TOP (1000) [idPais]
      ,[Pais]
  FROM [CentroMedico].[dbo].[Pais]


INSERT INTO Paciente1 (dni, nombre, apellido, fNaciiento, domicilio, idPais, telefono, email, observacion, fAlta)
VALUES ('3265891','Leandro', 'Paredes','1982-05-20','Casa 345', 'ARG', '632632632', 'lean@gmail.com','','')

insert into Paciente1 values('27854236','Claudio', 'López', '2019-01-01','Piedras 2056', 'ARG','913021315' ,'clopez@mail.com', 'sin observaciones', '2024/01/05')

INSERT INTO Pais values ('MEX', 'Mexico')
INSERT INTO Pais values('PER', 'Perú')




SELECT * FROM Pais
select * from Paciente1
select * from Medico

select nombre, apellido, idPais FROM Paciente1

---Insertar los estados en la tabla TurnoEstado

INSERT INTO TurnoEstado (descripcion)
VALUES('Pendiente')
,('Realizado')
,('Cancelado')
,('Rechazado')
,('Postergado')
,('Anulado')

INSERT INTO TurnoEstado (descripcion)
VALUES('Derivado')
--Esta da error porque el PK no se es identity y no se puede introducir manualmente
INSERT INTO TurnoEstado (idEstado, descripcion)
VALUES(3, 'Pendiente')
select * from TurnoEstado

INSERT INTO Turno values('2023-03-14',2, 'Paciente en ayunas')

select idTurno from Turno
select * from Turno
select idPaciente FROM Paciente1
SELECT idMedico FROM Medico


select * from Concepto

INSERT INTO PAGO VALUES (1, '2023-05-06', 350, 1, 'Recibido y pagado')

INSERT INTO PAGO VALUES (3, '2023-07-06', 750, 2, 'Recibido y pagado')
INSERT INTO PAGO VALUES(2, '2019-05-20', 6800, 1, 'Pago pendiente')
INSERT INTO PAGO VALUES(1, '2019-09-27', 5600, 0, 'Pago pendiente')

select * from PAGO

INSERT INTO PagoPaciente VALUES(5, 6, 4)
INSERT INTO PagoPaciente VALUES(5, 3, 1)
INSERT INTO PagoPaciente VALUES(4, 5, 4)

SELECT * FROM PagoPaciente

INSERT INTO Especialidad (Especialidad)
VALUES('Traumatología')
,('Clínica Médica')
,('Gastroenterología')
,('Pediatría')

select * from Especialidad


---------  CLAUSULAS TOP, ORDER BY ------
-----DISTINCT, GROUP BY, WHERE -------
-- TOP muestra los elementos N primeros de la BBDD

SELECT * FROM PACIENTE1

SELECT TOP 3 * FROM PACIENTE1

--OREDER BY ordena lo que se muestra en en pantalla según el parámetro que se indique, del menor a mayor

SELECT * FROM PACIENTE1 ORDER BY fNaciiento

SELECT * FROM PACIENTE1 ORDER BY fNaciiento DESC

SELECT TOP 3 * FROM PACIENTE1 ORDER BY fNaciiento DESC

-- DISTINCT muestra valores agrupados por un mismo valor, es decir evita repetidos
SELECT * FROM PACIENTE1

SELECT DISTINCT idPais FROM Paciente1 
SELECT DISTINCT observacion FROM Paciente1


-- GROUP BY agrupa los valores de determinado campo, y además permite aplicar más funciones de agregado
-- como cuentas, sumas, promedio y otras.

SELECT * FROM PACIENTE1

SELECT idPais FROM Paciente1 GROUP BY idPais
SELECT observacion FROM Paciente1 GROUP BY observacion

--Deberás realizar una consulta que devuelva los registros
--de la tabla Pago ordenados por fecha de pago de manera ascendente.

select * from PAGO
select * from PAGO ORDER BY fecha 
select * from PAGO ORDER BY fecha desc

-- WHERE filtra registros según los valores que tengan los campos

SELECT * FROM PACIENTE1

-- Buscar los pacientes de España, apellido ramirea y ultma de idpaciente 4

SELECT * FROM Paciente1 WHERE idPais = 'ESP'
SELECT * FROM Paciente1 WHERE apellido = 'Ramírez'
SELECT * FROM Paciente1 WHERE idpaciente = 4


---- ALLOWS NULLS ----

---  La propiedad ALLOW NULLS (permitir nulos)  establece la obligatoriedad de un campo.
--  En este caso vamos a establecer como obligatorios los campos Nombre y Apellido de la tabla Medico.
--Deberás cambiar la propiedad ALLOW NULLS de ambos campos a FALSE (desmarcar la casilla) y guardar los cambios.

---- Establecer propiedad IDENTITY
--Deberás establecer en SI la propiedad IDENTITY en el campo idEstado de la tabla TurnoEstado y guarda los cambios.
--Luego para comprobar la autonumeración del campo, inserta un nuevo registro en la Tabla con un nuevo estado que te imagines.
--Finalmente elimina ese único registro insertado con el método que prefieras.
--Nota: Ten en cuenta que la secuencialidad de la numeración puede no ser consecutiva (1, 2, 3, 4..etc), debido a que la misma
--es gestionada por el motor SQL o bien si hubiese registros eliminados previamente.


--- Renombrar Campo y cambiar tipo de dato
--En este ejercicio deberás renombrar el campo Obs de la Tabla Pago a Observacion
--También, si aún no lo has hecho, deberás cambiar el Tipo de Dato VARCHAR(1000) al
--Tipo de Dato de Usuario Observacion, desde la vista de diseño de la tabla.
