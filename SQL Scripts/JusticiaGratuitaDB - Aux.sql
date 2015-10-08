CREATE SEQUENCE SEQ_TJUZGADO_id START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE TJUZGADO
(
   ID   			 INT        DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_TJUZGADO_id) NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL
);

COMMENT ON COLUMN TJUZGADO.ID IS 'Identificador �nico de tipo de juzgado';
COMMENT ON COLUMN TJUZGADO.DESCRIPCION IS 'Descripci�n del tipo de juzgado';


ALTER TABLE TJUZGADO
   ADD CONSTRAINT PK_TJUZGADO
   PRIMARY KEY (ID);
   
CREATE INDEX IX_TJUZGADO
   ON TJUZGADO (ID ASC);
   
CREATE UNIQUE INDEX UK_TJUZGADO
   ON TJUZGADO (DESCRIPCION ASC);

Insert into TJUZGADO (ID, DESCRIPCION) VALUES ('PENAL', 'Penal');
Insert into TJUZGADO (ID, DESCRIPCION) VALUES ('ADMINISTRATIVO', 'Administrativo');
Insert into TJUZGADO (ID, DESCRIPCION) VALUES ('CONTENCIOSO', 'Contencioso');
Insert into TJUZGADO (ID, DESCRIPCION) VALUES ('SOCIAL', 'Social');
Insert into TJUZGADO (ID, DESCRIPCION) VALUES ('CIVIL', 'Civil');
Insert into TJUZGADO (ID, DESCRIPCION) VALUES ('DECANO', 'Decano');

CREATE SEQUENCE SEQ_TASUNTO_id START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE TASUNTO
(
   ID   			 INT        DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_TASUNTO_id) NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL,
   IDTIPO    	 VARCHAR(15)   NOT NULL
);

COMMENT ON COLUMN TASUNTO.ID IS 'Identificador �nico de tipo de asunto';
COMMENT ON COLUMN TASUNTO.IDTIPO IS 'Naturaleza del juzgado, cada asunto puede ser de un tipo de los del juzgado ';
COMMENT ON COLUMN TASUNTO.DESCRIPCION IS 'Descripci�n del tipo de asunto';


ALTER TABLE TASUNTO
   ADD CONSTRAINT PK_TASUNTO
   PRIMARY KEY (ID);
   
CREATE INDEX IX_TASUNTO
   ON TASUNTO (ID ASC);
   
CREATE UNIQUE INDEX UK_TASUNTO
   ON TASUNTO (DESCRIPCION ASC);
   
-- BEGIN FOREIGN KEYS --
	ALTER TABLE TASUNTO
  ADD FOREIGN KEY (IDTIPO)
  REFERENCES TJUZGADO (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --

Insert into TASUNTO (DESCRIPCION, IDTIPO) VALUES ('Procedimiento abreviado', 'PENAL');
Insert into TASUNTO (DESCRIPCION, IDTIPO) VALUES ('Procedimiento de divorcio', 'CIVIL');
Insert into TASUNTO (DESCRIPCION, IDTIPO) VALUES ('Impuganci�n testamento', 'DECANO');
Insert into TASUNTO (DESCRIPCION, IDTIPO) VALUES ('Recamaci�n de cantidad', 'PENAL');

CREATE SEQUENCE SEQ_TEXPED_id START WITH 1 INCREMENT BY 1 NOCYCLE CACHE 1;

CREATE TABLE TEXPEDIENTE
(
   ID   			 INT        DEFAULT (NEXT VALUE FOR PUBLIC.SEQ_TEXPED_id) NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL
);

COMMENT ON TABLE TEXPEDIENTE IS 'Auxiliar para indicar si el expediente es solicitado por el interesado o por el juzgado';
COMMENT ON COLUMN TEXPEDIENTE.ID IS 'Identificador �nico de tipo de expediente';
COMMENT ON COLUMN TEXPEDIENTE.DESCRIPCION IS 'Descripci�n del tipo de expediente';


ALTER TABLE TEXPEDIENTE
   ADD CONSTRAINT PK_TEXPEDIENTE
   PRIMARY KEY (ID);
   
CREATE INDEX IX_TEXPEDIENTE
   ON TEXPEDIENTE (ID ASC);
   
CREATE UNIQUE INDEX UK_TEXPEDIENTE
   ON TEXPEDIENTE (DESCRIPCION ASC);
   
insert into TEXPEDIENTE (DESCRIPCION) VALUES ('Interesado');
insert into TEXPEDIENTE (DESCRIPCION) VALUES ('Turno');

CREATE TABLE ESTADOEXP
(
   ID   			 INT        NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL,
   DESCRCORTA  VARCHAR(30)   NOT NULL,
   FECBAJA			TIMESTAMP,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

COMMENT ON COLUMN ESTADOEXP.ID IS 'Identificador �nico del estado del expediente';
COMMENT ON COLUMN ESTADOEXP.DESCRIPCION IS 'Texto descripci�n del estado';
COMMENT ON COLUMN ESTADOEXP.DESCRCORTA IS 'Texto descripci�n del estado en formato abreviado';
COMMENT ON COLUMN ESTADOEXP.FECBAJA IS 'Fecha de baja l�gica del cambio de estado';
COMMENT ON COLUMN ESTADOEXP.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN ESTADOEXP.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

ALTER TABLE ESTADOEXP
   ADD CONSTRAINT PK_ESTADOEXP
   PRIMARY KEY (ID);
   
CREATE INDEX IX_ESTADOEXP
   ON ESTADOEXP (ID ASC);
   
CREATE UNIQUE INDEX UK_ESTADOEXP_DESC
   ON ESTADOEXP (DESCRIPCION ASC);
   
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (1, 'Nuevo Solicitante', 'N. Sol.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (11,'Nuevo Juzgado', 'N. Juz.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (12,'Pendiente envio Juzgado', 'P. env. juz.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (13,'Enviado Juzgado', 'Env. juz.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (2, 'Pendiente Abogado', 'P. Abogado');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (3, 'Abogado asignado', 'Abogado asig.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (4, 'Pendiente Procurador', 'P. Pocura.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (5, 'Procurador asignado', 'Pocura. asig.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (6, 'Pendiente Comisi�n', 'P. Comis.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (7, 'Comisi�n asignada', 'Comis. asig.');
Insert into ESTADOEXP (ID, DESCRIPCION, DESCRCORTA) VALUES (8, 'Enviado a comisi�n', 'Env. comis.');

CREATE TABLE TPERFIL
(
   ID   			 VARCHAR(14)   NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL
);

COMMENT ON COLUMN TPERFIL.ID IS 'Identificador �nico de tipo de juzgado';
COMMENT ON COLUMN TPERFIL.DESCRIPCION IS 'Descripci�n del tipo de juzgado';


ALTER TABLE TPERFIL
   ADD CONSTRAINT PK_TPERFIL
   PRIMARY KEY (ID);
   
CREATE INDEX IX_TPERFIL
   ON TPERFIL (ID ASC);
   
CREATE UNIQUE INDEX UK_TPERFIL
   ON TPERFIL (DESCRIPCION ASC);

Insert into TPERFIL (ID, DESCRIPCION) VALUES ('ADMIN', 'Administrador');
Insert into TPERFIL (ID, DESCRIPCION) VALUES ('USER', 'Usuario');
Insert into TPERFIL (ID, DESCRIPCION) VALUES ('USERA', 'Usuario colegio abogados');
Insert into TPERFIL (ID, DESCRIPCION) VALUES ('USERD', 'Usuario delegaci�n');
Insert into TPERFIL (ID, DESCRIPCION) VALUES ('CONSUA', 'Consulta');


CREATE TABLE TRANSESTADOEXP
(
   IDESTADOACT INT        NOT NULL,
   IDESTADOFUT INT        NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL,
   DESCRCORTA  VARCHAR(30)   NOT NULL,
   ACCION			 VARCHAR(20)   NOT NULL,
   IDPERFIL    VARCHAR(14) NOT NULL,
   FECBAJA			TIMESTAMP,
   FECALTA							TIMESTAMP			 DEFAULT CURRENT_TIMESTAMP NOT NULL,
   FECMODIFICA					TIMESTAMP
);

COMMENT ON COLUMN TRANSESTADOEXP.IDESTADOACT IS 'Identificador �nico del estado del actual expediente';
COMMENT ON COLUMN TRANSESTADOEXP.IDESTADOFUT IS 'Estado al que se puede pasar si se aplica la acci�n';
COMMENT ON COLUMN TRANSESTADOEXP.DESCRIPCION IS 'Texto descripci�n de la transici�n';
COMMENT ON COLUMN TRANSESTADOEXP.DESCRCORTA IS 'Texto descripci�n de la transici�n en formato abreviado';
COMMENT ON COLUMN TRANSESTADOEXP.ACCION IS 'Acci�n que provoca el cambio de estado al estado futuro';
COMMENT ON COLUMN TRANSESTADOEXP.IDPERFIL IS 'Perfil de usuario que puede realizar la acci�n';
COMMENT ON COLUMN TRANSESTADOEXP.FECBAJA IS 'Fecha de baja l�gica del cambio de estado';
COMMENT ON COLUMN TRANSESTADOEXP.FECALTA IS 'Fecha de grabaci�n del registro';
COMMENT ON COLUMN TRANSESTADOEXP.FECMODIFICA IS 'Fecha de la �ltima modificaci�n del registro';

ALTER TABLE TRANSESTADOEXP
   ADD CONSTRAINT PK_TRANSESTADOEXP
   PRIMARY KEY (IDESTADOACT, IDESTADOFUT, ACCION);
   
CREATE INDEX IX_TRANSESTADOEXP_PK
   ON TRANSESTADOEXP (IDESTADOACT ASC, IDESTADOFUT ASC, ACCION ASC);
   
CREATE INDEX IX_TRANSESTADOEXP_ACT
   ON TRANSESTADOEXP (IDESTADOACT ASC);

CREATE UNIQUE INDEX UK_TRANSESTADOEXP_ESTADOS
   ON TRANSESTADOEXP (IDESTADOACT ASC, IDESTADOFUT ASC);
   

-- BEGIN FOREIGN KEYS --
ALTER TABLE TRANSESTADOEXP
  ADD FOREIGN KEY (IDPERFIL)
  REFERENCES TPERFIL (ID)
  ON UPDATE RESTRICT
  ON DELETE CASCADE;
-- END FOREIGN KEYS --

Insert into TRANSESTADOEXP (IDESTADOACT, IDESTADOFUT, DESCRIPCION, DESCRCORTA, ACCION, IDPERFIL) VALUES (1, 2, 'Grabar solicitud', 'Grabar', 'grabarsolic', 'ADMIN'); 
Insert into TRANSESTADOEXP (IDESTADOACT, IDESTADOFUT, DESCRIPCION, DESCRCORTA, ACCION, IDPERFIL) VALUES (2, 3, 'Asignar letrado', 'Asig. letrado', 'asignaabogado', 'ADMIN');
Insert into TRANSESTADOEXP (IDESTADOACT, IDESTADOFUT, DESCRIPCION, DESCRCORTA, ACCION, IDPERFIL) VALUES (3, 4, 'Comunicar letrado', 'Comuni. letrado', 'comunabogado', 'ADMIN');
Insert into TRANSESTADOEXP (IDESTADOACT, IDESTADOFUT, DESCRIPCION, DESCRCORTA, ACCION, IDPERFIL) VALUES (4, 5, 'Solicitar procurador', 'Solic. proc.', 'esperaprocura', 'ADMIN');
Insert into TRANSESTADOEXP (IDESTADOACT, IDESTADOFUT, DESCRIPCION, DESCRCORTA, ACCION, IDPERFIL) VALUES (5, 6, 'Asignar procurador', 'Asig. proc.', 'aignaprocura', 'ADMIN');

/* ******************************************************** */

CREATE TABLE TTIDENTIFICA
(
   ID   			 VARCHAR(14)	 NOT NULL,
   DESCRIPCION VARCHAR(100)  NOT NULL
);

COMMENT ON COLUMN TTIDENTIFICA.ID IS 'Identificador �nico de tipo de identificador de documento';
COMMENT ON COLUMN TTIDENTIFICA.DESCRIPCION IS 'Descripci�n del tipo de identificador de documento';


ALTER TABLE TTIDENTIFICA
   ADD CONSTRAINT PK_TTIDENTIFICA
   PRIMARY KEY (ID);
   
CREATE INDEX IX_TTIDENTIFICA
   ON TTIDENTIFICA (ID ASC);
   
CREATE UNIQUE INDEX UK_TTIDENTIFICA
   ON TTIDENTIFICA (DESCRIPCION ASC);

Insert into TTIDENTIFICA (ID, DESCRIPCION) VALUES ('NIF', 'NIF');
Insert into TTIDENTIFICA (ID, DESCRIPCION) VALUES ('NIE', 'NIE');
Insert into TTIDENTIFICA (ID, DESCRIPCION) VALUES ('PSPT', 'Pasaporte');

