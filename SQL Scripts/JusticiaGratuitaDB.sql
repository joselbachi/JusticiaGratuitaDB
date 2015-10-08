CREATE SEQUENCE SEQ_Persona_id START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE PERSONA
(
   ID                   INT         DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_Persona_id) NOT NULL,
   NOMBRE               VARCHAR(60)    NOT NULL,
   PAPELLIDO            VARCHAR(60)    NOT NULL,
   SAPELLIDO            VARCHAR(60),
   IDTIPOIDENTIFICADOR  VARCHAR(4)     NOT NULL,
   IDENTIFICADOR        VARCHAR(20)    NOT NULL,
   DIRECCION            VARCHAR(150)   NOT NULL,
   CODPOSTAL            INT     			NOT NULL,
   LOCALIDAD            VARCHAR(70)    NOT NULL,
   PROVINCIA            VARCHAR(70)    NOT NULL,
   TELEFONO             VARCHAR(15),
   TELMOVIL             VARCHAR(15)    NOT NULL,
   FECNAC								DATE,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

ALTER TABLE PERSONA
   ADD CONSTRAINT PK_PERSONA
   PRIMARY KEY (ID);

CREATE UNIQUE INDEX UK_PERSONA
   ON PERSONA (ID ASC);

CREATE UNIQUE INDEX UK_PERSONA_IDENTIF
   ON PERSONA (IDTIPOIDENTIFICADOR ASC, IDENTIFICADOR ASC);


COMMENT ON COLUMN PERSONA.ID IS 'identificador �nico';
COMMENT ON COLUMN PERSONA.NOMBRE IS 'Nombre de la persona';
COMMENT ON COLUMN PERSONA.PAPELLIDO IS 'primer apellido de la persona';
COMMENT ON COLUMN PERSONA.SAPELLIDO IS 'segundo apellido de la persona';
COMMENT ON COLUMN PERSONA.IDTIPOIDENTIFICADOR IS 'Tipo de documento identificador';
COMMENT ON COLUMN PERSONA.IDENTIFICADOR IS 'N�mero de documento identificador';
COMMENT ON COLUMN PERSONA.DIRECCION IS 'Direcci�n postal';
COMMENT ON COLUMN PERSONA.CODPOSTAL IS 'C�digo postal';
COMMENT ON COLUMN PERSONA.LOCALIDAD IS 'Localidad';
COMMENT ON COLUMN PERSONA.PROVINCIA IS 'Provincia';
COMMENT ON COLUMN PERSONA.TELEFONO IS 'Tel�fono';
COMMENT ON COLUMN PERSONA.TELMOVIL IS 'Tel�fono m�vil';
COMMENT ON COLUMN PERSONA.FECNAC IS 'Fecha de nacimiento';
COMMENT ON COLUMN PERSONA.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN PERSONA.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Jos� Luis','Bachiller', 'Gil' ,'NIF', '16801610H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Jos� Luis1','Bachiller1', 'Gil1' ,'NIF', '00000000H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Abogado1','Abogado1', 'Abogado1' ,'NIF', '00000001H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Abogado2','Abogado2', 'Abogado2' ,'NIF', '00000002H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Abogado3','Abogado3', 'Abogado1' ,'NIF', '00000003H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Persona1','Persona1', 'Persona1' ,'NIF', '00000004H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Persona2','Persona2', 'Persona2' ,'NIF', '00000005H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Persona3','Persona3', 'Persona3' ,'NIF', '00000006H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Persona4','Persona4', 'Persona4' ,'NIF', '00000007H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Procurador1','Procurador1', 'Procurador1' ,'NIF', '00000008H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Procurador2','Procurador2', 'Procurador2' ,'NIF', '00000009H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');

INSERT INTO PERSONA (NOMBRE, PAPELLIDO, SAPELLIDO, IDTIPOIDENTIFICADOR, IDENTIFICADOR, DIRECCION, CODPOSTAL, LOCALIDAD, PROVINCIA, TELEFONO, TELMOVIL) VALUES
('Procurador3','Procurador3', 'Procurador3' ,'NIF', '00000010H', 'Direcci�n postal', 42002, 'Alconaba', 'Soria', '975759137', '627393922');


CREATE TABLE USUARIO
(
   IDPERSONA   INT        NOT NULL,
   IDUSUARIO   VARCHAR(10)   NOT NULL,
   CONTRASENA  VARCHAR(10)   NOT NULL,
   IDPERFIL    VARCHAR(14)    NOT NULL,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

ALTER TABLE USUARIO
   ADD CONSTRAINT PK_USUARIO
   PRIMARY KEY (IDPERSONA);

CREATE INDEX IX_USUARIO_IDPER
   ON USUARIO (IDPERSONA ASC);

CREATE UNIQUE INDEX PK_USUARIO
   ON USUARIO (IDPERSONA ASC);


COMMENT ON COLUMN USUARIO.IDPERSONA IS 'Identificador de persona que puede conectarse';
COMMENT ON COLUMN USUARIO.IDUSUARIO IS 'C�digo de conexi�n del usuario';
COMMENT ON COLUMN USUARIO.CONTRASENA IS 'Contrase�a del usuario';
COMMENT ON COLUMN USUARIO.IDPERFIL IS 'Codigo del perfil dentro de la aplicaci�n';
COMMENT ON COLUMN USUARIO.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN USUARIO.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

-- BEGIN FOREIGN KEYS --
ALTER TABLE USUARIO
  ADD FOREIGN KEY (IDPERSONA)
  REFERENCES PERSONA (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
  
ALTER TABLE USUARIO
  ADD FOREIGN KEY (IDPERFIL)
  REFERENCES TPERFIL (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --

Insert into usuario (IDPERSONA, IDUSUARIO, CONTRASENA, IDPERFIL) Select ID, 'bachi', 'bachi', 'ADMIN' from PERSONA where IDENTIFICADOR = '16801610H';

CREATE SEQUENCE SEQ_Juzgado_id START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE JUZGADO
(
   ID   			 INT        DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_Juzgado_id) NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL,
   IDTIPO    	 VARCHAR(15)    NOT NULL,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

COMMENT ON COLUMN JUZGADO.ID IS 'Identificador �nico del juzgado';
COMMENT ON COLUMN JUZGADO.DESCRIPCION IS 'Nombre del juzgado';
COMMENT ON COLUMN JUZGADO.IDTIPO IS 'Naturaleza del juzgado';
COMMENT ON COLUMN JUZGADO.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN JUZGADO.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

ALTER TABLE JUZGADO
   ADD CONSTRAINT PK_JUZGADO
   PRIMARY KEY (ID);
   
CREATE INDEX IX_JUZGADO
   ON JUZGADO (ID ASC);
   
CREATE UNIQUE INDEX UK_JUZGADO
   ON JUZGADO (DESCRIPCION ASC);
   
-- BEGIN FOREIGN KEYS --
ALTER TABLE JUZGADO
  ADD FOREIGN KEY (IDTIPO)
  REFERENCES TJUZGADO (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --
   
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('AUDIENCIA PROVINCIAL DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('COMISARIA PROVINCIAL DE SORIA','ADMINISTRATIVO');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('FISCALIA DE MENORES N� 1 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE INSTRUCCION N� 1 DE ALMAZAN','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE INSTRUCCION N� 1 DE EL BURGO DE OSMA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE INSTRUCCION N� 1 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE INSTRUCCION N� 2 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE INSTRUCCION N� 3 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE INSTRUCCION N� 4 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE LO CONTENCIOSO ADMINISTRATIVO N� 1 DE SORIA','CONTENCIOSO');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE LO PENAL N� 1 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE LO SOCIAL N� 1 DE SORIA','SOCIAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE MENORES N� 1 DE SORIA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PAZ DE COVALEDA','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PRIMERA INSTANCIA N� 1 DE ALMAZAN','CIVIL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PRIMERA INSTANCIA N� 1 DE EL BURGO DE OSMA','CIVIL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PRIMERA INSTANCIA N� 1 DE SORIA','CIVIL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PRIMERA INSTANCIA N� 2 DE SORIA','CIVIL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PRIMERA INSTANCIA N� 3 DE SORIA','CIVIL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE PRIMERA INSTANCIA N� 4 DE SORIA','CIVIL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DE VIGILANCIA PENITENCIARIA N� 2 DE BURGOS','PENAL');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('JUZGADO DECANO','DECANO');
INSERT INTO JUZGADO (DESCRIPCION, IDTIPO ) VALUES
('TRIBUNAL SUPERIOR DE JUSTICIA DE CASTILLA Y LE�N. SALA SOCIAL N� 1 DE BURGOS','SOCIAL');

CREATE TABLE ABOGADO
(
   IDPERSONA   	INT     NOT NULL,
   NUMCOLEG   	INT	   NOT NULL,
   ORDENASIGNA  INT    NOT NULL,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

ALTER TABLE ABOGADO
   ADD CONSTRAINT PK_ABOGADO
   PRIMARY KEY (IDPERSONA);

CREATE INDEX IX_ABOGADO
   ON ABOGADO (IDPERSONA ASC);

CREATE UNIQUE INDEX PK_ABOGADO
   ON ABOGADO (IDPERSONA ASC);
   
CREATE UNIQUE INDEX UK_ABOGADO
   ON ABOGADO (NUMCOLEG ASC);
   
CREATE UNIQUE INDEX UK_ABO_ASIGNA
   ON ABOGADO (ORDENASIGNA ASC);


COMMENT ON COLUMN ABOGADO.IDPERSONA IS 'Identificador con los datos de la persona';
COMMENT ON COLUMN ABOGADO.NUMCOLEG IS 'Numero de colegiado';
COMMENT ON COLUMN ABOGADO.ORDENASIGNA IS 'Numero de orden en la lista circular de asignaci�n de abogado';
COMMENT ON COLUMN ABOGADO.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN ABOGADO.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

-- BEGIN FOREIGN KEYS --
ALTER TABLE ABOGADO
  ADD FOREIGN KEY (IDPERSONA)
  REFERENCES PERSONA (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --

Insert into ABOGADO (IDPERSONA, NUMCOLEG) Select ID, ID from PERSONA where NOMBRE like 'Abogado%';

CREATE TABLE PROCURADOR
(
   IDPERSONA   	INT     NOT NULL,
   NUMCOLEG   	INT	   NOT NULL,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

ALTER TABLE PROCURADOR
   ADD CONSTRAINT PK_PROCURADOR
   PRIMARY KEY (IDPERSONA);

CREATE INDEX IX_PROCURADOR
   ON PROCURADOR (IDPERSONA ASC);

CREATE UNIQUE INDEX PK_PROCURADOR
   ON PROCURADOR (IDPERSONA ASC);
   
CREATE UNIQUE INDEX UK_PROCURADOR
   ON PROCURADOR (NUMCOLEG ASC);


COMMENT ON COLUMN PROCURADOR.IDPERSONA IS 'Identificador con los datos de la persona';
COMMENT ON COLUMN PROCURADOR.NUMCOLEG IS 'Numero de colegiado';
COMMENT ON COLUMN PROCURADOR.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN PROCURADOR.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

-- BEGIN FOREIGN KEYS --
ALTER TABLE PROCURADOR
  ADD FOREIGN KEY (IDPERSONA)
  REFERENCES PERSONA (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --

Insert into PROCURADOR (IDPERSONA, NUMCOLEG) Select ID, ID from PERSONA where NOMBRE like 'Procurador%';

CREATE SEQUENCE SEQ_Comision_id START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE COMISION
(
   ID   				INT     DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_Comision_id) NOT NULL,
   FECCOMISION 	DATE			 NOT NULL,
   FECENVIODEL	DATE,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

ALTER TABLE COMISION
   ADD CONSTRAINT PK_COMISION
   PRIMARY KEY (ID);

CREATE INDEX IX_COMISION
   ON COMISION (ID ASC);

COMMENT ON COLUMN COMISION.ID IS 'Identificador �nico de la comisi�n';
COMMENT ON COLUMN COMISION.FECCOMISION IS 'Fecha en la que se va a desarrolar la comisi�n';
COMMENT ON COLUMN COMISION.FECCOMISION IS 'Fecha en la que se env�an los expedientes a la subdelegaci�n de gobierno';
COMMENT ON COLUMN COMISION.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN COMISION.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

Insert into Comision (FECCOMISION) VALUES ('2015-09-30');

CREATE SEQUENCE SEQ_Expediente_Turno START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;
CREATE SEQUENCE SEQ_Expediente_Exped START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE EXPEDIENTE
(
   ID                   INT 			NOT NULL,
   IDSOLICITANTE        INT    		 NOT NULL,
   IDJUZGADO						INT				 NOT NULL,
   IDLETRADO						INT,
   IDPROCURADOR					INT,
   NUMTURNO							INT				 DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_Expediente_Turno) NOT NULL,
   NUMEXPED							INT				 ,
   ANYO									INT						 NOT NULL,
   IDASUNTO							INT 				NOT NULL,
   IDCOMISION						INT,
   VIOLENCIA						BOOLEAN   		 DEFAULT FALSE NOT NULL,
   FECENTRADACOL				TIMESTAMP			 NOT NULL,
   FECENVIODEL					DATE,
   FECENTRADADEL				DATE,
   FECRESOLUCION				DATE,
   FECIMPUGNACION				DATE,
   OBSERVACIONES 				VARCHAR(500),
   IDESTADO							INT						 DEFAULT 0 NOT NULL,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP 
);

-- BEGIN FOREIGN KEYS --
ALTER TABLE EXPEDIENTE
  ADD FOREIGN KEY (IDSOLICITANTE)
  REFERENCES PERSONA (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
  
ALTER TABLE EXPEDIENTE
  ADD FOREIGN KEY (IDJUZGADO)
  REFERENCES JUZGADO (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
  
ALTER TABLE EXPEDIENTE
  ADD FOREIGN KEY (IDLETRADO)
  REFERENCES ABOGADO (IDPERSONA)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
  
ALTER TABLE EXPEDIENTE
  ADD FOREIGN KEY (IDPROCURADOR)
  REFERENCES PROCURADOR (IDPERSONA)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
  
ALTER TABLE EXPEDIENTE
  ADD FOREIGN KEY (IDCOMISION)
  REFERENCES COMISION (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
  
ALTER TABLE EXPEDIENTE
  ADD FOREIGN KEY (IDESTADO)
  REFERENCES ESTADOEXP (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --

ALTER TABLE EXPEDIENTE
   ADD CONSTRAINT PK_EXPEDIENTE
   PRIMARY KEY (ID);

CREATE INDEX IX_EXPEDIENTE_ID
   ON EXPEDIENTE (ID ASC);

CREATE UNIQUE INDEX PK_EXPEDIENTE
   ON EXPEDIENTE (ID ASC);

CREATE INDEX IX_EXPEDIENTE_SOLIC
   ON EXPEDIENTE (IDSOLICITANTE ASC);
   
CREATE INDEX IX_EXPEDIENTE_IDJUZGADO
   ON EXPEDIENTE (IDJUZGADO ASC);
   
CREATE INDEX IX_EXPEDIENTE_IDLETRADO
   ON EXPEDIENTE (IDLETRADO ASC);
   
CREATE INDEX IX_EXPEDIENTE_IDPROCURADOR
   ON EXPEDIENTE (IDPROCURADOR ASC);
   
CREATE INDEX IX_EXPEDIENTE_IDCOMISION
   ON EXPEDIENTE (IDCOMISION ASC);
   
CREATE INDEX IX_EXPEDIENTE_IDESTADO
   ON EXPEDIENTE (IDESTADO ASC);
   
CREATE UNIQUE INDEX IX_EXPEDIENTE_NTURNO
   ON EXPEDIENTE (ANYO ASC, NUMTURNO ASC);
   
CREATE UNIQUE INDEX IX_EXPEDIENTE_NEXPED
   ON EXPEDIENTE (ANYO ASC, NUMEXPED ASC);

COMMENT ON COLUMN EXPEDIENTE.ID IS 'C�digo �nico de expediente.';
COMMENT ON COLUMN EXPEDIENTE.IDSOLICITANTE IS 'C�digo de la persona que solicita la ayuda';
COMMENT ON COLUMN EXPEDIENTE.IDJUZGADO IS 'C�digo del juzgado que tramita la solicitud';
COMMENT ON COLUMN EXPEDIENTE.IDLETRADO IS 'C�digo de abogado que tramita el procedimiento';
COMMENT ON COLUMN EXPEDIENTE.IDPROCURADOR IS 'C�digo del procurador asignado al expediente.';
COMMENT ON COLUMN EXPEDIENTE.NUMTURNO IS 'N�mero secuencial de turno.';
COMMENT ON COLUMN EXPEDIENTE.NUMEXPED IS 'N�mero secuencial de expediente.';
COMMENT ON COLUMN EXPEDIENTE.ANYO IS 'A�o en el que entra el procedimiento. Junto con el n�mero de turno constituye el n�mero de expediente.';
COMMENT ON COLUMN EXPEDIENTE.IDASUNTO IS 'C�digo de la pretension-asunto que solicita el solicitante';
COMMENT ON COLUMN EXPEDIENTE.IDCOMISION IS 'C�digo de la comisi�n a la que se va a enviar el expediente.';
COMMENT ON COLUMN EXPEDIENTE.VIOLENCIA IS 'Idicador de si es de violencia de g�nero o no';
COMMENT ON COLUMN EXPEDIENTE.FECENTRADACOL IS 'Fecha de entrada en el colegio de abogados';
COMMENT ON COLUMN EXPEDIENTE.FECENVIODEL IS 'Fecha de env�o del expediente a la subdelegaci�n. (normalmente es igual a la fecha de env�o de la comisi�n)';
COMMENT ON COLUMN EXPEDIENTE.FECENTRADADEL IS 'Fecha de entrada en la subdelegaci�n';
COMMENT ON COLUMN EXPEDIENTE.FECRESOLUCION IS 'Fecha en la que se resuelve el expediente';
COMMENT ON COLUMN EXPEDIENTE.FECIMPUGNACION IS 'Fecha en la que se efectua la impugnaci�n';
COMMENT ON COLUMN EXPEDIENTE.OBSERVACIONES IS 'Obsevaciones de los gestores';
COMMENT ON COLUMN EXPEDIENTE.IDESTADO IS 'C�digo de estado del procedimiento';
COMMENT ON COLUMN EXPEDIENTE.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN EXPEDIENTE.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

INSERT INTO EXPEDIENTE
(IDSOLICITANTE,  IDJUZGADO,  IDLETRADO,  IDPROCURADOR,  ANYO, IDASUNTO, IDCOMISION,  VIOLENCIA,  FECENTRADACOL,  FECENVIODEL,  FECENTRADADEL,  FECRESOLUCION,
  FECIMPUGNACION,  OBSERVACIONES,  IDESTADO)
VALUES
(
  1,  1,  3,  NULL,  2015,  1, 10,  false,  TIMESTAMP '2015-01-01 12:12:12.000',  NULL,  NULL,  NULL,  NULL,  'OBSERVACIONES_value',  1
);

INSERT INTO EXPEDIENTE
(IDSOLICITANTE,  IDJUZGADO,  IDLETRADO,  IDPROCURADOR,  ANYO, IDASUNTO, IDCOMISION,  VIOLENCIA,  FECENTRADACOL,  FECENVIODEL,  FECENTRADADEL,  FECRESOLUCION,
  FECIMPUGNACION,  OBSERVACIONES,  IDESTADO)
VALUES
(
  2,  2,  null,  NULL,  2015,  2, null,  false,  TIMESTAMP '2015-09-01 12:10:09.000',  NULL,  NULL,  NULL,  NULL,  null,  1
);



