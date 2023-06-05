------------------------------------------------------------------------------------------------
--CHANGE DATA TYPE / cambiar tipo de dato

--Tuplas
--TContrato
ALTER TABLE Trabajadores ADD CONSTRAINT CK_TRABAJADORES_TIPODECONTRATO
CHECK (tipodecontrato IN ('laboral','término fijo','término indefinido','aprendizaje','temporal','accidental'));

--TEstado
ALTER TABLE Intervenciones ADD CONSTRAINT CK_INTERVENCIONES_ESTADODESALUD
CHECK (estadodesalud IN('Bueno','Regular','Malo'));

--TCalidad
ALTER TABLE Granjas ADD CONSTRAINT CK_GRANJAS_CALIDAD
CHECK (calidad IN('Diseño, conformidad y uso','Conformidad y uso','Diseño y uso','Diseño y Conformidad', 'Diseño','Conformidad','Uso','N/A'));

--TVacuna
ALTER TABLE Vacunas ADD CONSTRAINT CK_VACUNAS_TIPO
CHECK (tipo IN('Enfermedades virales','Reproductiva','Antiaftosa','Periodica'));

--TDestino
ALTER TABLE Destinos ADD CONSTRAINT CK_DESTINOS_TIPO
CHECK (tipo IN('Reproduccion','Leche','Carne'));

--TEstadoGanado
ALTER TABLE CabezaDeGanado ADD CONSTRAINT CK_CABEZASDEGANADO_ESTADO
CHECK (estado IN('Activo','Inactivo'));

--TCorreo
ALTER TABLE Usuarios ADD CONSTRAINT CK_USUARIOS_CORREOS
CHECK (correo LIKE '%@%');

--TuplasOK
--Fincas
insert into Fincas (id_, nombre, especificaciones) values (1001, 'Primavera', 'B4-5C-29-57-86-9D');

--Usuarios
insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo) values ('Jeanna Skeen', 1001, 1001, 1, '211.35.40.32/20', '07/03/2021', 1001, 'jskeen0@reuters.com');

insert into Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso) 
values (1001, 1001, '16/05/2010', 'Administrativo', 'Chatterp', 1001, 'Soltero', 'Letti Lynagh', 0, 1001, 'laboral', 2167, 4561089, '1001horas');

--CabezasDeGanado
INSERT INTO cabezadeganado(id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
VALUES ('1234567', 'Activo', 'pepe', '23/08/2011', 'muuu', 'caleto', 'M', 'negro', 1, 250, 'mixta', 'julio', NULL,NULL, NULL, NULL, 1001);

--Intervenciones TEstado
INSERT INTO intervenciones(revision, desparacitante, vacuna, inseminacion, fechadeintervencion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
VALUES ('12345', 'intosevasgal', 0, 0, '12/05/2020', 'madan', 'Bueno', '15/05/2020', 'media', '1234567');

--Ubicaciones 
insert into Ubicaciones (area, registrodepredio, higiene, tipo, clasificacion, id_Fincas) values ('area1111', 1001, 'Adaptable', 'Ganado', 1001, 1001);

--Granjas TCalidad
INSERT INTO granjas(area_ubi, registropredio_ubi, sistemadeordeno, calidad, establo)
VALUES ('area1111', 1001, 1, 'Conformidad y uso', 1);

--Vacunas TVacuna
INSERT INTO vacunas(numerovacuna, nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
VALUES ('123454', 'rabia', 98, 'ninguna', 12, 'ninguno', 'intramus', 16, 'reacciones leves', '14/05/2021', '14/06/2021', 'Reproductiva');

--Destinos TDestinos
INSERT INTO destinos(registronacimiento, tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto , crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, id_CG)
VALUES ('12345', 'Leche', NULL, NULL, NULL, NULL, NULL, NULL , 0, 'MIXTA', 1, 'julio', NULL, NULL, 0, NULL, 250, 'culminado', 'seco', 'corta', '123456', '1234567');

--Usuarios TCorreo
insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo) 
values ('Jeanna Skeen', 1001, 10012, 1, '211.35.40.32/20', '07/03/2021', 1001, 'jskeen0@reuters.com');


--TuplasNoOK
--Trabajadores TContrato
--insert into Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso) 
--values (1001, 1001, '16/05/2010', 'Administrativo', 'Chatterp', 1001, 'Soltero', 'Letti Lynagh', 0, 1001, 'pancho', 2167, 4561089, '1001horas');

--Intervenciones
--INSERT INTO intervenciones(revision, desparacitante, vacuna, inseminacion, fechadeintervencion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
--VALUES ('12345', 'intosevasgal', 0, 0, '12/05/2020', 'madan', 'revision', '15/05/2020', 'media', '1234567');

--Granjas
--INSERT INTO granjas(area_ubi, registropredio_ubi, sistemadeordeno, calidad, establo)
--VALUES ('boyaca', '123456', 1, 'excelente', 1);

--Vacunas TVacuna
--INSERT INTO vacunas(numerovacuna, nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
--VALUES ('12345', 'rabia', 98, 'ninguna', 12, 'ninguno', 'intramus', 16, 'reacciones leves', '14/05/2021', '14/06/2021', 'nomejo');

--Destinos TDestinos
--INSERT INTO destinos(registronacimiento, tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto , crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, id_CG)
--VALUES ('12345', 'Whiscky', NULL, NULL, NULL, NULL, NULL, NULL , 0, 'MIXTA', 1, 'julio', NULL, NULL, 0, NULL, 250, 'culminado', 'seco', 'corta', '123456', '12345467');

--CabezasDeGanado TEstadoGandao
--INSERT INTO cabezadeganado(id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
--VALUES ('1234567', 'nice', 'pepe', '23/08/2011', 'muuu', 'caleto', 'M', 'negro', 1, 250, 'mixta', 'julio', 'rocosa', '12345', NULL, NULL, 1001);

--Usuarios TCorreo
--insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo) 
--values ('Jeanna Skeen', 1001, 1001, 1, '211.35.40.32/20', '07/03/2021', 1001, 'jskeen0reuters.com');
------------------------------------------------------------------------------------------------
--ACTIONS 
ALTER TABLE Usuarios DROP CONSTRAINT FK_USUARIOS;
ALTER TABLE Destinos DROP CONSTRAINT FK_DESTINOS;
ALTER TABLE Proveedores DROP CONSTRAINT FK_PROVEEDORES;
ALTER TABLE Trabajadores DROP CONSTRAINT FK_TRABAJADORES;
ALTER TABLE Compradores DROP CONSTRAINT FK_COMPRADORES;

--AccionesOK 
--ALTER TABLE Usuarios DROP CONSTRAINT FK_USUARIOS;
INSERT INTO Fincas (id_, nombre, especificaciones)
VALUES ('id_fincas_1', 'Finca 1', 'Especificaciones de la Finca 1');
INSERT INTO Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
VALUES ('John Doe', 'Tipo1', '123456789', 0, 'Especificaciones 1', '10/06/2020', 'id_fincas_1', 'john.doe@example.com');


--ALTER TABLE Destinos DROP CONSTRAINT FK_DESTINOS;
INSERT INTO CabezaDeGanado (id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, categorias, area_ubi1, area_ubi2, registropredio_ubi1, registropredio_ubi2, id_fincas)
VALUES ('id_cabeza1', 'Activo', 'Cabeza 1', '06/09/2015', 'Madre 1', 'Padre 1', 'Hembra', 'Blanco', 0, 100, 'Raza 1', 'Inseminador 1', 'Categoría 1', NULL,NULL,NULL,NULL, 'id_fincas_1');
INSERT INTO Destinos (tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto, crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, registronacimiento, id_CG)
VALUES ('Leche', '06/09/2015', '06/09/2015', '06/09/2022', 'Toro 1', 5, 2, 3, 'Raza Especial 1', 0, 'Revisado 1', 10, 12, 0, 24, 500, 'Engorde 1', 'Ambiente 1', 'Bascula 1', 'RegistroP1', 'RegistroN1', 'id_cabeza1');


--ALTER TABLE Proveedores DROP CONSTRAINT FK_PROVEEDORES;
INSERT INTO Fincas (id_, nombre, especificaciones)
VALUES ('Finca2', 'Finca Ejemplo 1', 'Especificaciones Finca 1');

INSERT INTO Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
VALUES ('Usuario1', 'Tipo1', 'Numero1', 0, 'Especificaciones1', '09/01/2000', 'Finca2', 'usuario1@example.com');

INSERT INTO Productos (productos_id, fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa)
VALUES ('Producto1', '09/01/2000', 'Venta1', 'ADN1', 'VistaT', 'PaP1', 100, 50, 'CasaVenta1');

INSERT INTO Servicios (servicio_id, tipodemecanismo, productos, tecnologia, comercializacion, proceso, clasificacion, criadeanimales)
VALUES ('Servicio1', 'Mecanismo1', 'Producto1', 'Tec1', 'C1', 'Proceso1', 'C1', 0);

INSERT INTO Proveedores (Tipo_idusu, numero_idusu, nombre, registrosanitario, tipo, especificaciones, servicio_id, producto_id)
VALUES ('Tipo1', 'Numero1', 'Proveedor1', 'Registro1', 'TipoA', 'Especificaciones1', 'Servicio1', 'Producto1');


--ALTER TABLE Trabajadores DROP CONSTRAINT FK_TRABAJADORES;
INSERT INTO Fincas (id_, nombre, especificaciones)
VALUES ('Finca3', 'Finca Ejemplo 1', 'Especificaciones Finca 1');

INSERT INTO Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
VALUES ('Usuario10', 'Tipo1', 'Numero19', 0, 'Especificaciones1', '09/01/2000', 'Finca3', 'usuario1@example.com');

INSERT INTO Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso)
VALUES ('Tipo1', 'Numero19', '11/08/2018', 'Cargo1', 'Encargado1', 'Contrato1', 'Casado', 'Familiares1', 0, 'NumeroPoliza1', 'término fijo', 40, 2000, 'TiempoDescanso1');


--ALTER TABLE Compradores DROP CONSTRAINT FK_COMPRADORES;
INSERT INTO Fincas (id_, nombre, especificaciones)
VALUES ('Finca4', 'Finca Ejemplo 1', 'Especificaciones Finca 1');

INSERT INTO Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
VALUES ('Usuario110', 'Tipo1', 'Numero119', 0, 'Especificaciones1', '09/01/2000', 'Finca4', 'usuario1@example.com');

INSERT INTO Compradores (Tipo_idusu, numero_idusu, fechacompra, especificaciones, razasdecompra, tipos, mododepago)
VALUES ('Tipo1', 'Numero119', '09/01/2010', 'Especificaciones2', 'Raza2', 'Tipo2', 'Pago2');


----AccionesNOOK 
----ALTER TABLE Usuarios DROP CONSTRAINT FK_USUARIOS;
--INSERT INTO Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
--VALUES ('Jane Smith', 'Tipo2', '987654321', 0, 'Especificaciones 2', '2023-05-27', 'id_fincas_invalido', 'jane.smith@example.com');
--
----ALTER TABLE Destinos DROP CONSTRAINT FK_DESTINOS;
--INSERT INTO Destinos (tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto, crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, registronacimiento, id_CG)
--VALUES ('Tipo', '06/09/2015', '06/09/2015', '06/09/2022', 'Toro 1', 5, 2, 3, 'Raza Especial 1', 0, 'Revisado 1', 10, 12, 0, 24, 500, 'Engorde 1', 'Ambiente 1', 'Bascula 1', 'RegistroP1', 'RegistroN1', 'id_cabeza1');
--
----ALTER TABLE Proveedores DROP CONSTRAINT FK_PROVEEDORES;
--INSERT INTO Proveedores (Tipo_idusu, numero_idusu, nombre, registrosanitario, tipo, especificaciones, servicio_id, producto_id)
--VALUES ('Tipo1', 'Numero1', 'Proveedor1', 'Registro1', 'TipoA', 'Especificaciones1', 'Servicio11', 'Producto11');
--
----ALTER TABLE Trabajadores DROP CONSTRAINT FK_TRABAJADORES;
--INSERT INTO Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso)
--VALUES ('Tipo1', 'Numero0', '11/08/2018', 'Cargo1', 'Encargado1', 'Contrato1', 'Casado', 'Familiares1', 0, 'NumeroPoliza1', 'contrato', 40, 2000, 'TiempoDescanso1');
--
----ALTER TABLE Compradores DROP CONSTRAINT FK_COMPRADORES;
--INSERT INTO Compradores (Tipo_idusu, numero_idusu, fechacompra, especificaciones, razasdecompra, tipos, mododepago)
--VALUES (null, null, '09/01/2010', 'Especificaciones2', 'Raza2', 'Tipo2', 'Pago2');


--Disparadores
-- Disparador para generar la revision de intervenciones la intervención
CREATE SEQUENCE SECUENCIAPARATRGREVISION
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE OR REPLACE TRIGGER TRG_REVISIONINTERVER
BEFORE INSERT ON Intervenciones
FOR EACH ROW
BEGIN
  :new.revision := LPAD(SECUENCIAPARATRGREVISION.NEXTVAL, 4, '0');
END;
/

--Disparador para generar el id_ automaticamente
CREATE SEQUENCE SECUENCIAPARATRGID_CABEZADEGANADO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

CREATE TRIGGER TRGGENERARID_AUTOMATICAMENTE_
BEFORE INSERT ON CabezaDeGanado
FOR EACH ROW
BEGIN
    :NEW.id_ := CONCAT('CG', LPAD(SECUENCIAPARATRGID_CABEZADEGANADO.NEXTVAL, 4, '0'));
END;
/

--Disparador para revisar que la tasa de destete este =< al 60%
CREATE OR REPLACE TRIGGER TRG_VALIDAR_TASA_DESTETE
BEFORE INSERT OR UPDATE ON Maternidades
FOR EACH ROW
BEGIN
    IF :NEW.tasadedestete < 60 THEN
        RAISE_APPLICATION_ERROR(-20001, 'La tasa de destete debe ser igual o inferior al 60%.');
    END IF;
END;
/

--Disparador para almacenar actualizaciones que hagan sobre el usuario 
CREATE OR REPLACE TRIGGER TRG_ALMACENAR_ACTUALIZACION_USUARIO
BEFORE UPDATE ON Usuarios
FOR EACH ROW
DECLARE
    nombre_usuario VARCHAR(30) := USER;
    fecha_actual DATE := SYSDATE;
    dato_actualizado VARCHAR(100);
BEGIN
    -- Campo que se actualizó
    IF UPDATING('nombre') THEN
        dato_actualizado := 'nombre';
    ELSIF UPDATING('Tipo_id') THEN
        dato_actualizado := 'Tipo_id';
    ELSIF UPDATING('numero_id') THEN
        dato_actualizado := 'numero_id';
    ELSIF UPDATING('asociado') THEN
        dato_actualizado := 'asociado';
    ELSIF UPDATING('especificaciones') THEN
        dato_actualizado := 'especificaciones';
    ELSIF UPDATING('fechaingresomercado') THEN
        dato_actualizado := 'fechaingresomercado';
    ELSIF UPDATING('id_fincas') THEN
        dato_actualizado := 'id_fincas';
    ELSIF UPDATING('correo') THEN
        dato_actualizado := 'correo';
    END IF;
    -- Actualizar las especificaciones
    :NEW.especificaciones := 'Nombre usuario: ' || nombre_usuario ||
                              '; Fecha: ' || TO_CHAR(fecha_actual, 'DD/MM/YYYY') ||
                             '; Dato actualizado: ' || dato_actualizado;
END;
/

--Disparador para que el estado de la Cabeza de Ganado sea activo cuando crean una nueva 
CREATE OR REPLACE TRIGGER TRG_ASIGNAR_ESTADO_ACTIVO
BEFORE INSERT ON CabezaDeGanado
FOR EACH ROW
BEGIN
    :NEW.estado := 'Activo';
END;
/

--Disparador para generar el registrodepredio automaticamente
CREATE SEQUENCE SECUENCIAPARATRGUBICACIONESREGISTRODEPREDIO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

CREATE OR REPLACE TRIGGER TRGGENERARREGISTROPREDIO_AUTOMATICAMENTE_
BEFORE INSERT ON Ubicaciones
FOR EACH ROW
BEGIN
    :NEW.registrodepredio := LPAD(SECUENCIAPARATRGUBICACIONESREGISTRODEPREDIO.NEXTVAL, 4, '0');
END;
/

--Disparador para generar el id_ de fincas automaticamente
CREATE SEQUENCE SECUENCIAPARATRGIDFINCAUTO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

CREATE TRIGGER TRGGENERARIDFIN_AUTOMATICAMENTE_
BEFORE INSERT ON Fincas
FOR EACH ROW
BEGIN
    :NEW.id_ := CONCAT('F', LPAD(SECUENCIAPARATRGIDFINCAUTO.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar el id_fincas de usuario automaticamente
CREATE SEQUENCE SECUENCIAPARATRGIDUSUARIO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;


CREATE TRIGGER TRGGENERARIDUSU_AUTOMATICAMENTE_
BEFORE INSERT ON Usuarios
FOR EACH ROW
BEGIN
    :NEW.id_fincas := CONCAT('IF', LPAD(SECUENCIAPARATRGIDUSUARIO.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar el registrosanitario de proveedores automaticamente
CREATE SEQUENCE SECUENCIAPARATRGREGISSANITARIO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

CREATE TRIGGER TRGGENERARREGISTROSANITARIOPROVEEDORES_AUTOMATICAMENTE_
BEFORE INSERT ON Proveedores
FOR EACH ROW
BEGIN
    :NEW.registrosanitario := CONCAT('RS',LPAD(SECUENCIAPARATRGREGISSANITARIO.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar el servicioid de Servicios automaticamente
CREATE SEQUENCE SECUENCIAPARATRGSERVICIOID
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;

CREATE TRIGGER TRGGENERARSERVICIOIDSERV_AUTOMATICAMENTE_
BEFORE INSERT ON Servicios
FOR EACH ROW
BEGIN
    :NEW.servicio_id := CONCAT('SI',LPAD(SECUENCIAPARATRGSERVICIOID.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar el producto_id de Productos automaticamente
CREATE SEQUENCE SECUENCIAPARATRGPRODUCTOID
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARPRODUCTOID_AUTOMATICAMENTE_
BEFORE INSERT ON Productos
FOR EACH ROW
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

--Disparador para generar la fecha de compra del comprador automaticamente
CREATE TRIGGER TRGGENERARFECHADECOMPRACOMPRADOR_AUTOMATICAMENTE_
BEFORE INSERT ON Compradores
FOR EACH ROW
BEGIN
    :NEW.fechacompra := SYSDATE;
END;
/

--Disparador para generar numero guia de movilizaciones automaticamente
CREATE SEQUENCE SECUENCIAPARATRGNUMGUIA
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARNUMEROGUIA_AUTOMATICAMENTE_
BEFORE INSERT ON Movilizaciones
FOR EACH ROW
BEGIN
    :NEW.numeroguia := CONCAT('NG',LPAD(SECUENCIAPARATRGNUMGUIA.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar la fecha de registro de la movilizacion automaticamente
CREATE TRIGGER TRGGENERARFECHAREGISTRO_AUTOMATICAMENTE_
BEFORE INSERT ON Movilizaciones
FOR EACH ROW
BEGIN
    :NEW.fechaderegistro := SYSDATE;
END;
/

--Disparador para generar el registro de nacimiento de destino automaticamente
CREATE SEQUENCE SECUENCIAPARATRGREGINACIMIENTO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARREGISTRONACIMIENTO_AUTOMATICAMENTE_
BEFORE INSERT ON Destinos
FOR EACH ROW
BEGIN
    :NEW.registronacimiento := CONCAT('RN',LPAD(SECUENCIAPARATRGREGINACIMIENTO.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar el numeroderegistroparto de destino automaticamente
CREATE SEQUENCE SECUENCIAPARATRGREGIPARTO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARREGISTROPARTO_AUTOMATICAMENTE_
BEFORE INSERT ON Destinos
FOR EACH ROW
BEGIN
    :NEW.numeroderegistroparto := SECUENCIAPARATRGREGIPARTO.NEXTVAL;
END;
/


--Disparador para generar el numeroderegistropeso de destino automaticamente
CREATE SEQUENCE SECUENCIAPARATRGREGIPESO
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARREGISTROPESO_AUTOMATICAMENTE_
BEFORE INSERT ON Destinos
FOR EACH ROW
BEGIN
    :NEW.registropeso := CONCAT('RP',LPAD(SECUENCIAPARATRGREGIPESO.NEXTVAL, 4, '0'));
END;
/

--Disparador para generar la fechadeintervencion de intervencion automaticamente
CREATE TRIGGER TRGGENERARFECHADEINTERVENCIONES_AUTOMATICAMENTE_
BEFORE INSERT ON Intervenciones
FOR EACH ROW
BEGIN
    :NEW.fechadeintervencion := SYSDATE;
END;
/

--Disparador para generar el numerodetratamiento de Tratamiento automaticamente
CREATE SEQUENCE SECUENCIAPARATRGNUMTRATA
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARNUMTRATAMIENTO_AUTOMATICAMENTE_
BEFORE INSERT ON Tratamientos
FOR EACH ROW
BEGIN
    :NEW.numerodetratamiento := SECUENCIAPARATRGNUMTRATA.NEXTVAL;
END;
/

--Disparador para generar el numero de vacuna automaticamente
CREATE SEQUENCE SECUENCIAPARATRGNUMVACUNA
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARNUMVACUNA_AUTOMATICAMENTE_
BEFORE INSERT ON Vacunas
FOR EACH ROW
BEGIN
    :NEW.numerovacuna := CONCAT('NV',LPAD(SECUENCIAPARATRGNUMVACUNA.NEXTVAL, 4, '0'));
END;
/


--Disparador para generar el numero de maternidades automaticamente
CREATE SEQUENCE SECUENCIAPARATRGNUMATERNIDAD
    START WITH 1
    INCREMENT BY 1
    NOCYCLE;
CREATE TRIGGER TRGGENERARNUMMATERNIDAD_AUTOMATICAMENTE_
BEFORE INSERT ON Maternidades
FOR EACH ROW
BEGIN
    :NEW.numeromaternidad := CONCAT('NM',LPAD(SECUENCIAPARATRGNUMATERNIDAD.NEXTVAL, 4, '0'));
END;
/

--Reiniciar las secuencias para los disparadores
--Primero borrar antes de agregarlos// depende
SELECT SECUENCIAPARATRGID_CABEZADEGANADO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGUBICACIONESREGISTRODEPREDIO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGIDFINCAUTO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGIDUSUARIO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGREGISSANITARIO.NEXTVAL FROM DUAL; 
SELECT SECUENCIAPARATRGSERVICIOID.NEXTVAL FROM DUAL;  
SELECT SECUENCIAPARATRGPRODUCTOID.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGNUMCONTRATO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGNPOLIZADESEG.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGREGINACIMIENTO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGREGIPARTO.NEXTVAL FROM DUAL;
SELECT SECUENCIAPARATRGREGIPESO.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGNUMTRATA.NEXTVAL FROM DUAL; 
SELECT SECUENCIAPARATRGNUMVACUNA.NEXTVAL FROM DUAL;  
SELECT SECUENCIAPARATRGNUMATERNIDAD.NEXTVAL FROM DUAL;    
SELECT SECUENCIAPARATRGNUMGUIA.NEXTVAL FROM DUAL;   
SELECT SECUENCIAPARATRGREVISION.NEXTVAL FROM DUAL;  

--XDisparadores
DROP sequence SECUENCIAPARATRGID_CABEZADEGANADO;
DROP sequence SECUENCIAPARATRGUBICACIONESREGISTRODEPREDIO;
DROP sequence SECUENCIAPARATRGIDFINCAUTO;
DROP sequence SECUENCIAPARATRGIDUSUARIO;
DROP sequence SECUENCIAPARATRGREGISSANITARIO;
DROP sequence SECUENCIAPARATRGSERVICIOID;
DROP sequence SECUENCIAPARATRGPRODUCTOID;
DROP sequence SECUENCIAPARATRGNUMCONTRATO;
DROP sequence SECUENCIAPARATRGNPOLIZADESEG;
DROP sequence SECUENCIAPARATRGREGINACIMIENTO;
DROP sequence SECUENCIAPARATRGREGIPARTO;
DROP sequence SECUENCIAPARATRGREGIPESO;
DROP sequence SECUENCIAPARATRGNUMTRATA;
DROP sequence SECUENCIAPARATRGNUMVACUNA;
DROP sequence SECUENCIAPARATRGNUMATERNIDAD;
DROP sequence SECUENCIAPARATRGNUMGUIA; 
DROP sequence SECUENCIAPARATRGREVISION;

DROP TRIGGER TRG_REVISIONINTERVER;
DROP TRIGGER TRGGENERARID_AUTOMATICAMENTE_;
DROP TRIGGER TRG_VALIDAR_TASA_DESTETE;
DROP TRIGGER TRG_ALMACENAR_ACTUALIZACION_USUARIO;
DROP TRIGGER TRG_ASIGNAR_ESTADO_ACTIVO;
DROP TRIGGER TRGGENERARREGISTROPREDIO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARIDFIN_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARIDUSU_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARREGISTROSANITARIOPROVEEDORES_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARSERVICIOIDSERV_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARPRODUCTOID_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARFECHADECOMPRA_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARNUMCONTRATO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARPOLIZADESEGURIDAD_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARFECHADECOMPRACOMPRADOR_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARNUMEROGUIA_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARFECHAREGISTRO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARREGISTRONACIMIENTO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARREGISTROPARTO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARREGISTROPESO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARFECHADEINTERVENCIONES_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARNUMTRATAMIENTO_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARNUMVACUNA_AUTOMATICAMENTE_;
DROP TRIGGER TRGGENERARNUMMATERNIDAD_AUTOMATICAMENTE_;

-- DisparadoresOk
--Fincas
insert into Fincas ( nombre, especificaciones) 
values ( 'Primavera', 'B4-5C-29-');

--Usuarios
insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, correo) 
values ('Jeanna Skeen', 'Cedula', 1054, 1, '211.35', '07/03/2021', 'jskeen0@reuters.com');

--Compradores
INSERT INTO Compradores (Tipo_idusu, numero_idusu, especificaciones, razasdecompra, tipos, mododepago)
VALUES ('Cédula', '123456789', 'Especificaciones de compra', 'Raza1', 'Tipo1', 'Pago1');

INSERT INTO Compradores (Tipo_idusu, numero_idusu, especificaciones, razasdecompra, tipos, mododepago)
VALUES ('Cedula', 1054, 'Especificaciones de compra', 'Raza1', 'Tipo1', 'Pago1');

--Trabajadores
INSERT INTO Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, estadocivil,familiares,polizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso)
VALUES ('Cedula', '1321389', '27/05/2013', 'Cargo1', 'Encargado1', 'Soltero', 'Juana Triana', 1, 'término indefinido', 40, 1000, '5 días');

--Servicios
INSERT INTO Servicios (tipodemecanismo, productos, tecnologia, comercializacion, proceso, clasificacion, criadeanimales)
VALUES ('Mecanismo1', 'Producto1', 'Tecnologia', 'Ganadera', 'Proceso1', '1', 0);

--Productos 
insert into Productos ( fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa) values 
( '18/02/1962', 'Ganaderos', null, 'Ganadera', null, null, 58997614, 'Trumpeter swan');

--Proveedores
insert into Proveedores (Tipo_idusu, numero_idusu, nombre, tipo, especificaciones) 
values (1001, 1001, 'Tamarra Brickett', 'Vaca', 'Ganaderia');

--Movilizaciones 
insert into Movilizaciones ( guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechademovilizacion)
 values ( 'guia1000', 'Lambdean', 1001, 'Russia', 'Poland', 'Patti Lambdean', 'Transporte', 'Ganaderia','12/06/2019');

--Ubicaciones 
insert into Ubicaciones (area, higiene, tipo, clasificacion, id_Fincas)
values ('area1001', 'Adaptable', 'Ganado', 1001, 'F0001');

--CabezaDeGanado
INSERT INTO CabezaDeGanado( nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
VALUES ('Paquita', '12/06/2018' , 'Pepa', 'Pepe', 'M', 'blanquita', 1, 250, 'Roja', 'Veterinario', null,null, null, null, 'F0001');

--Destinos
INSERT INTO destinos( tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, id_CG)
VALUES ('Leche', '12/06/2022' , '12/06/2023' , '12/06/2021' , 'juancho', 3 , 2, 'raza', 1, 'revisado', 13, 12, 1, 2, 234, 'engorde', 'Templado', 'bascula','CG0002');
      
--Intervenciones
INSERT INTO intervenciones(desparacitante, vacuna, inseminacion,tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
 VALUES ( 'desparacitante', 1, 0, 'generica', 'Bueno', '12/06/2023', 'Alta', 'CG0001');
    
--Tratamientos
INSERT INTO tratamientos(nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados)
VALUES ('tiroxina', 3, 'cuidados', 'ordeño', 'aplicar cada 6 horas medicamento');

--Vacunas
INSERT INTO vacunas( nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
            VALUES ( 'planb', 3, 'requerido', 3, 'cuidados', 'aplicacion', 2, 'generalidades', '12/06/2023', '12/06/2025', 'Enfermedades virales');

--Maternidades
INSERT INTO maternidades( fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento)
            VALUES ( 'fertilidad', 60, 'parto', 1, 4, 'cuidado', 0, 'diag', 'requiere', 0, 'curacion', 'riesgo', 'templada');


----DisparadoresNoOk
----Fincas
--insert into Fincas ( nombre, especificaciones) 
--values (1, 'Primavera', 'B4-5C-29-');
--
----Usuarios
--insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, correo) 
--values ('Jeanna Skeen', 'Cedula', 1054, 1, '211.35', '07/03/2021', 'jskeen0@reuters.com',1);
--
----Compradores
--INSERT INTO Compradores (Tipo_idusu, numero_idusu, especificaciones, razasdecompra, tipos, mododepago, id)
--VALUES ('Cédula', '123456789', 'Especificaciones de compra', 'Raza1', 'Tipo1', 'Pago1');
--
--INSERT INTO Compradores (Tipo_idusu, numero_idusu, especificaciones, razasdecompra, tipos, mododepago)
--VALUES ('Cedula', 'Especificaciones de compra', 'Raza1', 'Tipo1', 'Pago1');
--
----Trabajadores
--INSERT INTO Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, estadocivil,familiares,polizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso)
--VALUES ('Cedula', '1321389', '27/05/2013', 'Cargo1', 'Encargado1', 'Soltero', 'Juana Triana', 1, 'término indefinido',True , 1000, '5 días');
--
----Servicios
--INSERT INTO Servicios (tipodemecanismo, productos, tecnologia, comercializacion, proceso, clasificacion, criadeanimales)
--VALUES ('Mecanismo1', 'Producto1', 'Tecnologia', 'Ganadera', 'Proceso1', '1', 0,1);
--
----Productos 
--insert into Productos ( fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa) values 
--(1'Ganaderos', null, 'Ganadera', null, null, 58997614, 'Trumpeter swan');
--
----Proveedores
--insert into Proveedores (Tipo_idusu, numero_idusu, nombre, tipo, especificaciones) 
--values ( 1001, 'Tamarra Brickett', 'Vaca', 'Ganaderia');
--
----Movilizaciones 
--insert into Movilizaciones ( guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechademovilizacion)
-- values ( 'Lambdean', 1001, 'Russia', 'Poland', 'Patti Lambdean', 'Transporte', 'Ganaderia','12/06/2019');
--
----Ubicaciones 
--insert into Ubicaciones (area, higiene, tipo, clasificacion, id_Fincas)
--values ('area1001', 'Adaptable', 'Ganado', 1001, 'F00');
--
----CabezaDeGanado
--INSERT INTO CabezaDeGanado( nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
--VALUES ('Paquita', '12/06/2018' , 'Pepa', 'Pepe', 'M', 'blanquita', 1, 250, 'Roja', 'Veterinario', null,null, null, null, 'F0');
--
----Destinos
--INSERT INTO destinos( tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, id_CG)
--VALUES ('Leche', '12/06/2022' , '12/06/2023' , '12/06/2021' , 'juancho', 3 , 2, 'raza', 1, 'revisado', 13, 12, 1, 2, 234, 'engorde', 'Templado', 'bascula');
--      
----Intervenciones
--INSERT INTO intervenciones(desparacitante, vacuna, inseminacion,tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
-- VALUES ( 'desparacitante', True, 0, 'generica', 'Bueno', '12/06/2023', 'Alta', 'CG0001');
--    
----Tratamientos
--INSERT INTO tratamientos(nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados)
--VALUES ('tiroxina', 'cuidados', 'ordeño', 'aplicar cada 6 horas medicamento');
--
----Vacunas
--INSERT INTO vacunas( nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
--            VALUES ( 'planb', 'requerido', 3, 'cuidados', 'aplicacion', 2, 'generalidades', '12/06/2023', '12/06/2025', 'Enfermedades virales');
--
----Maternidades
--INSERT INTO maternidades( fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento)
--            VALUES ( 'fertilidad', 40, 'parto', 1, 4, 'cuidado', 0, 'diag', 'requiere', 0, 'curacion', 'riesgo', 'templada');
--
