create table Paciente(
		idpaciente int NOT NULL,
		DNI varchar(9) NOT NULL,
		nombre varchar(50)NOT NULL,
		apellido varchar(50) NULL,
		fNaciiento date NULL,
		domicilio varchar(50) NULL,
		idPais char(3) NULL,
		telefono varchar(20) NULL, 
		email varchar(20) NULL,
		observacion varchar(1000) NULL,
		fAlta datetime NOT NULL,
		CONSTRAINT PK_idpaciente PRIMARY KEY (idpaciente)
)

create table Historia(
		idHistoria int NOT NULL,
		fechaHistoria datetime NOT NULL,
		observacion varchar(2000) NOT NULL,
		idPaciente int NOT NULL,
		idMedico int NOT NULL,
		CONSTRAINT PK_idHistoria PRIMARY KEY (idHistoria)
		)

CREATE TABLE TurnoEstado(
		idEstado smallint NOT NULL,
		descripcion varchar(50) NOT NULL,
		CONSTRAINT PK_idTurnoEstado PRIMARY KEY (idEstado)
)

CREATE TABLE Especialidad(
		idEspecialidad int NOT NULL,
		Especialidad varchar(50) NOT NULL,
		CONSTRAINT PK_idEspecialidad PRIMARY KEY (idEspecialidad)
)

CREATE TABLE PAGO(
		idpago int IDENTITY (1, 1) NOT NULL PRIMARY KEY,
		concepto tinyint NOT NULL,
		fecha datetime NOT NULL,
		importe money NOT NULL,
		estado tinyint,
		observacion varchar(1000)
)

CREATE TABLE PagoPaciente(
		idpago int NOT NULL,
		idPaciente int NOT NULL,
		idTurno int NOT NULL,

		PRIMARY KEY(idpago, idPaciente, idTurno)
)

CREATE TABLE Medico(
		idMedico int IDENTITY (1,1) NOT NULL PRIMARY KEY,
		nombre varchar(50) NOT NULL,
		apellidos varchar(50) NOT NULL
)

CREATE TABLE MedicoEspecialidad(
		idMedico int NOT NULL,
		idEspecialidad int NOT NULL,
		descripcion varchar(1000) NOT NULL,

		PRIMARY KEY(idMedico, idEspecialidad)
)

CREATE TABLE Concepto(
		idConcepto tinyint IDENTITY(1,1) NOT NULL PRIMARY KEY,
		descripcion varchar(100)
)

--Crear tipos de datos
CREATE TYPE Medico from int NOT NULL
CREATE TYPE turno from int NOT NULL
CREATE TYPE observacion from varchar(1000) NOT NULL

-- DIAGRAMAS DE RELACIONES ENTRE TABLAS


CREATE TABLE PacienteInfor(
	idPaciente paciente,
	diabetico BIT,
	implantes BIT,
	PRIMARY KEY (idPaciente)
)