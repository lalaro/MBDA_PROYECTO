--CICLO 2 
--CREACIÓN DE TABLAS
CREATE TABLE Respuestas
(
    fecha DATE,
    descripcion VARCHAR(50),
    nombre VARCHAR(300),
    correo VARCHAR (100),
    comentario VARCHAR (300) NULL,
    puntuacion VARCHAR (5) NULL,
    id_respuesta VARCHAR (30)
)
;

CREATE TABLE PQRSS
(
    ticket VARCHAR(13),
    fecha DATE,
    descripcion XMLTYPE, 
    tipo VARCHAR (1),
    estado VARCHAR(1),
    cierre DATE NULL,
    id_CG VARCHAR (40),
    id_res VARCHAR (30)
)
;

CREATE TABLE Anexos
(
    nombre VARCHAR(15),
    url VARCHAR (100),
    ticket VARCHAR (19)
)
;
--CREACION DE PKS
ALTER TABLE Respuestas ADD CONSTRAINT PK_RESPUESTAS
    PRIMARY KEY(id_respuesta);

ALTER TABLE PQRSS ADD CONSTRAINT PK_PQRSS
    PRIMARY KEY(ticket);

ALTER TABLE Anexos ADD CONSTRAINT PK_ANEXOS
    PRIMARY KEY(nombre,ticket);


--CREACION DE FKS
ALTER TABLE PQRSS ADD CONSTRAINT FK_PQRSS1
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE PQRSS ADD CONSTRAINT FK_PQRSS2
    FOREIGN KEY(id_res) REFERENCES Respuestas(id_respuesta);

ALTER TABLE Anexos ADD CONSTRAINT FK_Anexos 
    FOREIGN KEY(ticket) REFERENCES PQRSS(ticket);


--CREACION DE UKS
ALTER TABLE Anexos ADD CONSTRAINT UK_ANEXOS
    UNIQUE (url);

--TRUNCATE 
TRUNCATE TABLE Respuestas;
TRUNCATE TABLE PQRSS;
TRUNCATE TABLE Anexos;

--XTABLAS
DROP TABLE Respuestas CASCADE CONSTRAINTS; 
DROP TABLE PQRSS CASCADE CONSTRAINTS; 
DROP TABLE Anexos CASCADE CONSTRAINTS; 

--CONSULTA
SELECT ticket, descripcion, fecha
FROM PQRSS
WHERE EXTRACT(YEAR FROM fecha) = EXTRACT(YEAR FROM CURRENT_DATE) AND estado = 'C' AND descripcion LIKE 'Correo Electrónico%'
ORDER BY fecha DESC;

--TUPLAS 
--TPuntuacion
ALTER TABLE Respuestas ADD CONSTRAINT CK_RESPUESTAS_PUNTUACION
CHECK (puntuacion IN ('1','2','3','4','5'));

--TTicket
ALTER TABLE PQRSS ADD CONSTRAINT CK_PQRSS_TICKET
CHECK (ticket LIKE '[A-Za-z][0-9]{12}');

--TDescripcion
ALTER TABLE PQRSS ADD CONSTRAINT CK_PQRSS_DESCRIPCION
CHECK (descripcion LIKE '%_%');

--TTipo_
ALTER TABLE PQRSS ADD CONSTRAINT CK_PQRSS_TIPO
CHECK (tipo IN ('P','Q','R','S'));

--TEstado_
ALTER TABLE PQRSS ADD CONSTRAINT CK_PQRSS_ESTADO
CHECK (estado IN ('A','C','R'));

--TUrl
ALTER TABLE Anexos ADD CONSTRAINT CK_ANEXOS_URL
CHECK (url LIKE 'https://');

--ACCIONES
--A. Al eliminar un PQRS se deben borrar los documentos anexos asociados.
CREATE TRIGGER TR_PQRS_BorrarAnexos
AFTER DELETE ON PQRSS
FOR EACH ROW
BEGIN
    DELETE FROM Anexos
    WHERE ticket = :OLD.ticket;
END;
/


--DISPARADORES
--1. El ticket PQRS se crea a partir de la concatenación del tipo (P, Q, R o S) y el momento de radicación en formato YYYYMMDDHHMM
CREATE OR REPLACE TRIGGER TRG_PQRS_GenerarTicket
BEFORE INSERT ON PQRSS
FOR EACH ROW
BEGIN
    :NEW.ticket := :NEW.tipo || TO_CHAR(:NEW.fecha, 'YYYYMMDDHH24MI');
END;
/

--2. Si el tipo no es definido, la órden se registra con tipo S.
CREATE OR REPLACE TRIGGER TRG_PQRS_TipoPredeterminado
BEFORE INSERT ON PQRSS
FOR EACH ROW
BEGIN
    IF :NEW.tipo IS NULL THEN
        :NEW.tipo := 'S'; -- Establecer el tipo como 'S' (definido como predeterminado)
    END IF;
END;
/

--3. La fecha de radicación corresponde a la fecha del momento en el cual se registra: Dato automático.
CREATE OR REPLACE TRIGGER TRG_PQRS_FechaRadicacion
BEFORE INSERT ON PQRSS
FOR EACH ROW
BEGIN
    :NEW.fecha := SYSDATE; -- Establecer la fecha de radicación como la fecha actual
END;
/

--4. El estado inicial de un PQRS es Abierto. 
CREATE OR REPLACE TRIGGER TRG_PQRS_EstadoInicial
BEFORE INSERT ON PQRSS
FOR EACH ROW
BEGIN
    :NEW.estado := 'A'; -- 'A' representa el estado 'Abierto'
END;
/

--5. Al cerrar o rechazar la PQRS se debe asignar la fecha actual en el campo fecha de cierre.
CREATE OR REPLACE TRIGGER TRG_PQRS_FechaCierre
BEFORE UPDATE ON PQRSS
FOR EACH ROW
BEGIN
    IF :NEW.estado = 'C' OR :NEW.estado = 'R' THEN -- Si el estado es 'C' (Cerrado) o 'R' (Rechazado)
        :NEW.cierre := SYSDATE; -- Asignar la fecha actual al campo "cierre"
    END IF;
END;
/

--6. El único dato que se puede modificar es el estado del PQRS.
CREATE OR REPLACE TRIGGER TRG_PQRS_ModificarEstado
BEFORE UPDATE ON PQRSS
FOR EACH ROW
BEGIN
    IF :NEW.estado <> :OLD.estado THEN
        -- Permitir la modificación del estado
        NULL;
    ELSE
        -- Restringir la modificación de otros campos
        RAISE_APPLICATION_ERROR(-20001, 'No se permite modificar campos distintos al estado.');
    END IF;
END;
/

--7. La fecha de cierre debe ser posterior a la fecha de radicación.
CREATE OR REPLACE TRIGGER TR_PQRS_FechaCierrePosterior
BEFORE UPDATE ON PQRSS
FOR EACH ROW
BEGIN
    IF :NEW.cierre IS NOT NULL AND :NEW.cierre <= :NEW.fecha THEN
        RAISE_APPLICATION_ERROR(-20001, 'La fecha de cierre debe ser posterior a la fecha de radicación.');
    END IF;
END;
/

--8. Solo es posible adicionar anexos al PQRS si su estado es Abierto
CREATE OR REPLACE TRIGGER TR_Anexos_ValidarEstado
BEFORE INSERT ON Anexos
FOR EACH ROW
DECLARE
    estado_pqrs CHAR(1);
BEGIN
    SELECT estado INTO estado_pqrs
    FROM PQRSS
    WHERE ticket = :NEW.ticket;
    
    IF estado_pqrs <> 'A' THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se pueden agregar anexos a un PQRS que no esté en estado Abierto.');
    END IF;
END;
/

--9. Los PQRS solo se pueden eliminar si no tienen respuestas asociadas.
CREATE OR REPLACE TRIGGER TR_PQRS_ValidarRespuestas
BEFORE DELETE ON PQRSS
FOR EACH ROW
DECLARE
    total_respuestas INT;
BEGIN
    SELECT COUNT(*) INTO total_respuestas
    FROM Respuestas
    WHERE id_respuesta = :OLD.id_res;
    
    IF total_respuestas > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se puede eliminar un PQRS que tiene respuestas asociadas.');
    END IF;
END;
/

DROP TRIGGER TRG_PQRS_GenerarTicket;
DROP TRIGGER TRG_PQRS_TipoPredeterminado;
DROP TRIGGER TRG_PQRS_FechaRadicacion;
DROP TRIGGER TRG_PQRS_EstadoInicial;
DROP TRIGGER TRG_PQRS_FechaCierre;
DROP TRIGGER TRG_PQRS_ModificarEstado;
DROP TRIGGER TR_PQRS_FechaCierrePosterior;
DROP TRIGGER TR_Anexos_ValidarEstado;
DROP TRIGGER TR_PQRS_ValidarRespuestas;
DROP TRIGGER TR_PQRS_BorrarAnexos;

--CRUDE
CREATE OR REPLACE PACKAGE PC_PQRSS AS
    PROCEDURE ad_PQRS(id_CG VARCHAR, descripcion XMLTYPE, nombrearchivo VARCHAR, urlarchivo VARCHAR);
    PROCEDURE ad_Anexo(ticket VARCHAR, nombre VARCHAR, url VARCHAR);
    PROCEDURE mo_PQRS(ticket VARCHAR, estado VARCHAR);
    PROCEDURE el_PQRS(ticket VARCHAR);
    FUNCTION co_PQRS RETURN SYS_REFCURSOR;
    PROCEDURE ad_Respuesta(fecha DATE, descripcion VARCHAR, nombre VARCHAR, correo VARCHAR, comentario VARCHAR, puntuacion VARCHAR);
END PC_PQRSS;
/

--CRUDI 
--BODY PC_PQRSS
--CRUDI 
--BODY PC_PQRSS
CREATE OR REPLACE PACKAGE BODY PC_PQRSS AS
    PROCEDURE ad_PQRS(id_CG VARCHAR, descripcion XMLTYPE, nombrearchivo VARCHAR, urlarchivo VARCHAR) IS 
    BEGIN
        -- Lógica para procesar la adición de PQRS
		INSERT INTO PQRSS(id_CG, descripcion)
		VALUES (id_CG, descripcion);
        -- retorna un varchar el cual  sera la pk de pqrs
        COMMIT; 
    END ad_PQRS;

    PROCEDURE ad_Anexo(ticket VARCHAR, nombre VARCHAR, url VARCHAR) IS
    BEGIN
        -- Lógica para procesar la adición de anexos a PQRS
        INSERT INTO Anexos(nombre, url, ticket)
        VALUES(nombre, url, ticket);
    END ad_Anexo;

    PROCEDURE mo_PQRS(ticket VARCHAR, estado VARCHAR) IS
    BEGIN
        -- Lógica para modificar el estado de una PQRS 
        UPDATE PQRSS SET estado = estado 
        WHERE ticket = ticket ; 
        COMMIT; 
    END mo_PQRS;

    PROCEDURE el_PQRS(ticket VARCHAR) IS
    BEGIN
        -- Lógica para eliminar una PQRS
        DELETE
        FROM PQRSS
        WHERE ticket = ticket;
    END el_PQRS;

    FUNCTION co_PQRS RETURN SYS_REFCURSOR IS
        co_PQRS SYS_REFCURSOR;
    BEGIN
        -- Lógica para obtener un cursor con información de PQRS
        OPEN co_PQRS FOR
        SELECT *
        FROM PQRSS; 
        RETURN co_PQRS;
    END co_PQRS;


    PROCEDURE ad_Respuesta(fecha DATE, descripcion VARCHAR, nombre VARCHAR, correo VARCHAR, comentario VARCHAR, puntuacion VARCHAR) IS
    BEGIN
        -- Lógica para procesar la adición de una respuesta a una PQRS
        INSERT INTO Respuestas(fecha, descripcion, nombre, correo, comentario, puntuacion) 
        VALUES (fecha, descripcion, nombre, correo, comentario, puntuacion);
    END ad_Respuesta;
END PC_PQRSS;
/

DROP PACKAGE PC_PQRSS;

-- Ejemplo de prueba para el procedimiento mo_PQRS
DECLARE
  ticket  VARCHAR2(100) := 'ABC123';
  estado  VARCHAR2(100) := 'Cerrado';
BEGIN
  PC_PQRSS.mo_PQRS(ticket, estado);
  DBMS_OUTPUT.PUT_LINE('Procedimiento mo_PQRS ejecutado correctamente.');
END;
/

-- Ejemplo de prueba para el procedimiento el_PQRS
DECLARE
  ticket  VARCHAR2(100) := 'ABC123';
BEGIN
  PC_PQRSS.el_PQRS(ticket);
  DBMS_OUTPUT.PUT_LINE('Procedimiento el_PQRS ejecutado correctamente.');
END;
/

-- Ejemplo de prueba para la función co_PQRS
DECLARE
  cur SYS_REFCURSOR;
BEGIN
  cur := PC_PQRSS.co_PQRS;
  -- Realizar operaciones con el cursor resultante, como recorrerlo y mostrar los resultados
  DBMS_OUTPUT.PUT_LINE('Función co_PQRS ejecutada correctamente.');
END;
/


BEGIN
    :NEW.productos_id := CONCAT('PI',LPAD(SECUENCIAPARATRGPRODUCTOID.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar la fecha de compra de productos automaticamente
CREATE TRIGGER TRGGENERARFECHADECOMPRA_AUTOMATICAMENTE_
BEFORE INSERT ON Productos
FOR EACH ROW
BEGIN
    :NEW.fechadecompra := SYSDATE;
END;
/

--Disparador para generar el numerodecontrato de Trabajador automaticamente
CREATE SEQUENCE SECUENCIAPARATRGNUMCONTRATO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARNUMCONTRATO_AUTOMATICAMENTE_
BEFORE INSERT ON Trabajadores
FOR EACH ROW
BEGIN
    :NEW.numerodecontrato := CONCAT('NC',LPAD(SECUENCIAPARATRGNUMCONTRATO.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar el numeropolizadeseguridad de Trabajador automaticamente
CREATE SEQUENCE SECUENCIAPARATRGNPOLIZADESEG
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARPOLIZADESEGURIDAD_AUTOMATICAMENTE_
BEFORE INSERT ON Trabajadores
FOR EACH ROW
BEGIN
    :NEW.numeropolizadeseguridad  := CONCAT('PS',LPAD(SECUENCIAPARATRGNPOLIZADESEG.NEXTVAL, 4, '0'));
END;
/
