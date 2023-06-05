CREATE TABLE Fincas
(
    id_ VARCHAR (30),
    nombre VARCHAR(50),
    especificaciones VARCHAR(300)
)
;

CREATE TABLE Usuarios
(
    nombre VARCHAR(30),
    Tipo_id VARCHAR(30),
    numero_id VARCHAR (30),
    asociado NUMBER(1) DEFAULT 0,
    especificaciones VARCHAR(100),
    fechaingresomercado DATE,
    id_fincas VARCHAR(20),
    correo VARCHAR (50)
)
;

CREATE TABLE Direccion_usu_ubi
(
    direccion VARCHAR (30) NULL,
    Tipoid_usu VARCHAR (30) NULL,
    numeroid_usu VARCHAR(30) NULL,
    area_ubi VARCHAR (20) NULL,
    registrodepredio_ubi VARCHAR(20) NULL
)
;

CREATE TABLE Compradores
(
    Tipo_idusu VARCHAR(30),
    numero_idusu VARCHAR(30),
    fechacompra DATE,
    especificaciones VARCHAR(40),
    razasdecompra VARCHAR(10),
    tipos VARCHAR(30),
    mododepago VARCHAR(30)
)
;

CREATE TABLE Trabajadores
(
    Tipo_idusu VARCHAR(30),
    numero_idusu VARCHAR(30),
    fechadeingresotrabajar DATE,
    cargo VARCHAR(20),
    encargadofinca VARCHAR(10),
    numerodecontrato VARCHAR(10),
    estadocivil VARCHAR(10),
    familiares VARCHAR(50),
    polizadeseguridad NUMBER(1) DEFAULT 0 NOT NULL,
    numeropolizadeseguridad VARCHAR(30),
    tipodecontrato VARCHAR(20),
    horastrabajadas INTEGER,
    salario INTEGER,
    tiempodedescanso VARCHAR(50)
)
;

CREATE TABLE Acuerdos_trabajadores
(
    acuerdo VARCHAR(300) NULL,
    Tipo_idusu VARCHAR(30),
    numero_idusu VARCHAR(30)
)
;

CREATE TABLE CabezaDeGanado
(
    id_ VARCHAR(20),
    estado VARCHAR (20),
    nombre VARCHAR(20),
    fechanacimiento DATE,
    madre VARCHAR(20),
    padre VARCHAR(20),
    sexo VARCHAR(20),
    color VARCHAR(20),
    confirmado NUMBER(1) DEFAULT 0 NOT NULL,
    pesaje INTEGER,
    raza VARCHAR(50),
    inseminador VARCHAR(20),
    categorias VARCHAR(50),
    area_ubi1 VARCHAR(30),
    area_ubi2 VARCHAR(30),
    registropredio_ubi1 VARCHAR (30),
    registropredio_ubi2 VARCHAR (30),
    id_fincas VARCHAR(30)
)
;

CREATE TABLE Destinos
(
    tipo VARCHAR(20),
    fechaultimoparto DATE NULL,
    fechaprimerparto DATE NULL,
    fechaultimoservicio DATE NULL,
    toro VARCHAR(30) NULL,
    numerodeservicios INTEGER NULL,
    numeroderegistroparto INTEGER NULL,
    crias INTEGER,
    razaespecial VARCHAR(60),
    confirmado NUMBER(1) DEFAULT 0 NOT NULL,
    revisado VARCHAR(30),
    litrosdelechemanana INTEGER NULL,
    litrosdelechetarde INTEGER NULL,
    secado NUMBER(1) DEFAULT 0 NOT NULL,
    edadprimerparto INTEGER NULL, 
    pesokg FLOAT,
    engorde VARCHAR(10),
    ambiente VARCHAR(10),
    bascula VARCHAR(10),
    registropeso VARCHAR(10),
    registronacimiento VARCHAR(10),
    id_CG VARCHAR(20))
;

CREATE TABLE Ubicaciones
(
    area VARCHAR(20),
    registrodepredio VARCHAR(20),
    higiene VARCHAR(30),
    tipo VARCHAR(20),
    clasificacion VARCHAR(20),
    id_fincas VARCHAR(30)
)
;

CREATE TABLE Prados
(
    area_ubi VARCHAR(20),
    registropredio_ubi VARCHAR(20),
    sostenibilidad VARCHAR(10),
    tipodepastaje VARCHAR(30),
    clima VARCHAR(10),
    alturasobreniveldelmar INTEGER
)
;

CREATE TABLE Granjas
(
    area_ubi VARCHAR(20),
    registropredio_ubi VARCHAR(20),
    sistemadeordeno NUMBER(1) DEFAULT 0 NOT NULL,
    calidad VARCHAR (30),
    establo NUMBER(1) DEFAULT 0 NOT NULL
)
;

CREATE TABLE Intervenciones
(
    desparacitante VARCHAR(500),
    vacuna NUMBER(1) DEFAULT 0 NOT NULL,
    inseminacion NUMBER(1) DEFAULT 0 NOT NULL,
    fechadeintervencion DATE,
    tipodeasistencia VARCHAR(10),
    estadodesalud VARCHAR(10),
    fechadeculminacion DATE,
    revision VARCHAR (20),
    prioridad VARCHAR(10),
    id_CG VARCHAR(20)
)
;

CREATE TABLE Tratamientos
(
    numerodetratamiento INTEGER,
    nombremedicamento VARCHAR(3000),
    tiempodeduracion INTEGER,
    especificaciones VARCHAR(20),
    restricciones VARCHAR(100),
    cuidados VARCHAR(100)
)
;

CREATE TABLE Vacunas
(
    numerovacuna VARCHAR (20),
    nombre VARCHAR(300),
    dosis INTEGER,
    especificaciones VARCHAR(100),
    tiempodeduracion INTEGER,
    cuidados VARCHAR(10),
    aplicacion VARCHAR(10),
    ciclo INTEGER,
    generalidades VARCHAR(100),
    fechadeinicio DATE,
    fechaculminacion DATE,
    tipo VARCHAR (30)
)
;

CREATE TABLE Maternidades
(
    numeromaternidad VARCHAR (20),
    fertilidad VARCHAR(10),
    tasadedestete INTEGER,
    intervalodeparto VARCHAR(10),
    inseminacion NUMBER(1) DEFAULT 0 NOT NULL,
    periododegestacion INTEGER,
    cuidado VARCHAR(10),
    nacimiento NUMBER(1) DEFAULT 0 NOT NULL,
    diagnostico VARCHAR(10),
    consideraciones VARCHAR(10),
    atenciondecria NUMBER(1) DEFAULT 0 NOT NULL,
    curacion VARCHAR(10),
    riesgo VARCHAR(10),
    zonadecubrimiento VARCHAR(10)
)
;

CREATE TABLE Alimentaciones
(
    pastaje NUMBER(1) DEFAULT 0 NOT NULL,
    suplementos NUMBER(1) DEFAULT 0 NOT NULL,
    vitaminas NUMBER(1) DEFAULT 0 NOT NULL,
    liquido NUMBER(1) DEFAULT 0 NOT NULL,
    salmineral NUMBER(1) DEFAULT 0 NOT NULL,
    melaza NUMBER(1) DEFAULT 0 NOT NULL,
    caracteristicas VARCHAR(20),
    id_CG VARCHAR(20)
)
;

CREATE TABLE otro_alimentaciones
(
    otro VARCHAR (20),
    caracteristicas_ali VARCHAR (20)
)
;

CREATE TABLE Movilizaciones
(
    numeroguia VARCHAR(10),
    guiasdemovilizacion VARCHAR(10),
    predio VARCHAR(20),
    registro VARCHAR(20),
    origen VARCHAR(20),
    destino VARCHAR(20),
    nombretrabajador VARCHAR(50),
    findelaactividad VARCHAR(10),
    especificaciones VARCHAR(50),
    fechaderegistro DATE,
    fechademovilizacion DATE
)
;

CREATE TABLE movilizaciones_totales
(
    total VARCHAR(10) NOT NULL,
    numeroguia_movi VARCHAR (10)
)
;

CREATE TABLE Proveedores
(
    Tipo_idusu VARCHAR (30),
    numero_idusu VARCHAR(30),
    nombre VARCHAR(20),
    registrosanitario VARCHAR(30),
    tipo VARCHAR(10),
    especificaciones VARCHAR (40),
    servicio_id VARCHAR(30) NULL,
    producto_id VARCHAR(30) NULL
)
;

CREATE TABLE Servicios
(
    servicio_id VARCHAR(30),
    tipodemecanismo VARCHAR(10),
    productos VARCHAR(10),
    tecnologia VARCHAR(10),
    comercializacion VARCHAR(10),
    proceso VARCHAR(10),
    clasificacion VARCHAR(10),
    criadeanimales NUMBER(1) DEFAULT 0 NOT NULL
)
;

CREATE TABLE Productos
(
    productos_id VARCHAR(30),
    fechadecompra DATE,
    tipodeventa VARCHAR(10),
    convenciondeADN VARCHAR(10),
    vistatecnica VARCHAR(10),
    panoramadeproduccion VARCHAR(10),
    rentabilidad INTEGER,
    bonodeventa INTEGER,
    casadeventa VARCHAR(30)
)
;



CREATE TABLE cabezaDeGanado_intervenciones
(
    id_CG VARCHAR(20),
    revision_inter VARCHAR(20)
)
;

CREATE TABLE cabezaDeGanado_Alimentaciones
(
    id_CG VARCHAR(20),
    caracteristicas_ali VARCHAR (20)
)
;


CREATE TABLE trabajadores_movilizaciones
(
    Tipo_idusu VARCHAR (30),
    numero_idusu VARCHAR(30),
    numeroguia_movi VARCHAR (30)
)
;

CREATE TABLE Ubicaciones_movilizaciones
(
    numeroguia_movi VARCHAR (10),
    area_ubi VARCHAR (20),
    registrodepredio_ubi VARCHAR(20)
)
;

CREATE TABLE trabajador_intervenciones
(
    Tipo_idusu VARCHAR (30),
    numero_idusu VARCHAR(30),
    revision_inter VARCHAR (30)
)
;


CREATE TABLE trabajadores_CabezasDeGanado
(
    Tipo_idusu VARCHAR (30),
    numero_idusu VARCHAR(30),
    id_CG VARCHAR (30)
)
;

CREATE TABLE intervenciones_tratamientos
(
    revision_inter VARCHAR (30),
    numerodetratamiento_trat INTEGER
)
;

CREATE TABLE intervenciones_vacunas
(
    revision_inter VARCHAR (30),
    numerovacuna_vac VARCHAR(30)
)
;

CREATE TABLE intervenciones_maternidades
(
    revision_inter VARCHAR (30),
    numerodematernidad_mat VARCHAR(30)
)
;

--------------------------------------------------------------------------------------------------
-- PRIMARY KEYS

ALTER TABLE Fincas ADD CONSTRAINT PK_FINCAS
    PRIMARY KEY(id_);

ALTER TABLE Usuarios ADD CONSTRAINT PK_USUARIOS
    PRIMARY KEY(Tipo_id, numero_id);

ALTER TABLE Direccion_usu_ubi ADD CONSTRAINT PK_DIRECCION_USU_UBI
    PRIMARY KEY(direccion);

ALTER TABLE Proveedores ADD CONSTRAINT PK_PROVEEDORES
    PRIMARY KEY(Tipo_idusu, numero_idusu);

ALTER TABLE Productos ADD CONSTRAINT PK_PRODUCTOS
    PRIMARY KEY(productos_id);

ALTER TABLE Servicios ADD CONSTRAINT PK_SERVICIOS
    PRIMARY KEY(servicio_id);

ALTER TABLE Compradores ADD CONSTRAINT PK_COMPRADORES
    PRIMARY KEY(Tipo_idusu, numero_idusu);

ALTER TABLE Trabajadores ADD CONSTRAINT PK_TRABAJADORES
    PRIMARY KEY(Tipo_idusu, numero_idusu);

ALTER TABLE Acuerdos_trabajadores ADD CONSTRAINT PK_ACUERDOS_TRABAJADORES
    PRIMARY KEY(acuerdo);

ALTER TABLE Ubicaciones ADD CONSTRAINT PK_UBICACIONES
    PRIMARY KEY(area, registrodepredio);

ALTER TABLE Prados ADD CONSTRAINT PK_PRADOS
    PRIMARY KEY(area_ubi, registropredio_ubi);

ALTER TABLE Granjas ADD CONSTRAINT PK_GRANJAS
    PRIMARY KEY(area_ubi, registropredio_ubi);

ALTER TABLE Movilizaciones ADD CONSTRAINT PK_MOVILIZACIONES
    PRIMARY KEY(numeroguia);

ALTER TABLE movilizaciones_totales ADD CONSTRAINT PK_MOVILIZACIONES_TOTAL
    PRIMARY KEY(total);

ALTER TABLE CabezaDeGanado ADD CONSTRAINT PK_CABEZADEGANADO
    PRIMARY KEY(id_);

ALTER TABLE Destinos ADD CONSTRAINT PK_DESTINOS
    PRIMARY KEY(registronacimiento);

ALTER TABLE Alimentaciones ADD CONSTRAINT PK_ALIMENTACIONES
    PRIMARY KEY(caracteristicas);

ALTER TABLE otro_alimentaciones ADD CONSTRAINT PK_OTRO_ALIMENTACIONES
    PRIMARY KEY(otro);

ALTER TABLE Intervenciones ADD CONSTRAINT PK_INTERVENCIONES
    PRIMARY KEY(revision);

ALTER TABLE Tratamientos ADD CONSTRAINT PK_TRATAMIENTOS
    PRIMARY KEY(numerodetratamiento);

ALTER TABLE Vacunas ADD CONSTRAINT PK_VACUNAS
    PRIMARY KEY(numerovacuna);

ALTER TABLE Maternidades ADD CONSTRAINT PK_MATERNIDADES
    PRIMARY KEY(numeromaternidad);

ALTER TABLE Ubicaciones_movilizaciones ADD CONSTRAINT PK_UBICACIONES_MOVILIZACIONES
    PRIMARY KEY(numeroguia_movi, area_ubi, registrodepredio_ubi);

ALTER TABLE trabajadores_movilizaciones ADD CONSTRAINT PK_TRABAJADORES_MOVILIZACIONES
    PRIMARY KEY(Tipo_idusu, numero_idusu, numeroguia_movi);

ALTER TABLE trabajadores_CabezasDeGanado ADD CONSTRAINT PK_TRABAJADORES_CABEZASDEGANADO
    PRIMARY KEY(Tipo_idusu, numero_idusu, id_CG);

ALTER TABLE cabezaDeGanado_Alimentaciones ADD CONSTRAINT PK_CABEZADEGANADO_ALIMENTACIONES
    PRIMARY KEY(id_CG, caracteristicas_ali);

ALTER TABLE cabezaDeGanado_intervenciones ADD CONSTRAINT PK_CABEZADEGANADO_INTERVENCIONES
    PRIMARY KEY(id_CG, revision_inter);

ALTER TABLE trabajador_intervenciones ADD CONSTRAINT PK_TRABAJADOR_INTERVENCIONES
    PRIMARY KEY(Tipo_idusu, numero_idusu, revision_inter);        

ALTER TABLE intervenciones_tratamientos ADD CONSTRAINT PK_INTERVENCIONES_TRATAMIENTOS
    PRIMARY KEY(revision_inter, numerodetratamiento_trat);

ALTER TABLE intervenciones_vacunas ADD CONSTRAINT PK_INTERVENCIONES_VACUNAS
    PRIMARY KEY(revision_inter, numerovacuna_vac);

ALTER TABLE intervenciones_maternidades ADD CONSTRAINT PK_CABEZADEGANADO_PROVEEDOR
    PRIMARY KEY(revision_inter, numerodematernidad_mat);

--------------------------------------------------------------------------------------------------
-- UNIQUE KEYS
ALTER TABLE Trabajadores ADD CONSTRAINT UK_TRABAJADORES
    UNIQUE (numerodecontrato);

ALTER TABLE Destinos ADD CONSTRAINT UK_DESTINOS
    UNIQUE (numeroderegistroparto, registropeso);

--------------------------------------------------------------------------------------------------
-- FOREIGN KEYS

ALTER TABLE Usuarios ADD CONSTRAINT FK_USUARIOS
    FOREIGN KEY(id_fincas) REFERENCES Fincas(id_);

ALTER TABLE Direccion_usu_ubi ADD CONSTRAINT FK_DIRECCION_USU_UBI 
    FOREIGN KEY(Tipoid_usu, numeroid_usu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE Direccion_usu_ubi ADD CONSTRAINT FK_DIRECCION_USU_UBI2 
    FOREIGN KEY(area_ubi, registrodepredio_ubi) REFERENCES Ubicaciones(area, registrodepredio);

ALTER TABLE Proveedores ADD CONSTRAINT FK_PROVEEDORES
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE Proveedores ADD CONSTRAINT FK_PROVEEDORES2
    FOREIGN KEY(servicio_id) REFERENCES Servicios(servicio_id);

ALTER TABLE Proveedores ADD CONSTRAINT FK_PROVEEDORES3
    FOREIGN KEY(producto_id) REFERENCES Productos(productos_id);

ALTER TABLE Compradores ADD CONSTRAINT FK_COMPRADORES
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE Trabajadores ADD CONSTRAINT FK_TRABAJADORES
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE Acuerdos_trabajadores ADD CONSTRAINT FK_ACUERDOS_TRABAJADORES
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE Ubicaciones ADD CONSTRAINT FK_UBICACIONES
    FOREIGN KEY(id_fincas) REFERENCES Fincas(id_);

ALTER TABLE Prados ADD CONSTRAINT FK_PRADOS
    FOREIGN KEY(area_ubi, registropredio_ubi) REFERENCES Ubicaciones(area, registrodepredio);

ALTER TABLE Granjas ADD CONSTRAINT FK_GRANJAS
    FOREIGN KEY(area_ubi, registropredio_ubi) REFERENCES Ubicaciones(area, registrodepredio);

ALTER TABLE movilizaciones_totales ADD CONSTRAINT FK_MOVILIZACIONES_TOTALES
    FOREIGN KEY(numeroguia_movi) REFERENCES Movilizaciones(numeroguia);

ALTER TABLE CabezaDeGanado ADD CONSTRAINT FK_CABEZADEGANADO
    FOREIGN KEY(area_ubi1, registropredio_ubi1) REFERENCES Ubicaciones(area, registrodepredio);

ALTER TABLE CabezaDeGanado ADD CONSTRAINT FK_CABEZADEGANADO1
    FOREIGN KEY(area_ubi2, registropredio_ubi2) REFERENCES Ubicaciones(area, registrodepredio);

ALTER TABLE CabezaDeGanado ADD CONSTRAINT FK_CABEZADEGANADO2
    FOREIGN KEY(id_fincas) REFERENCES Fincas(id_);

ALTER TABLE Destinos ADD CONSTRAINT FK_DESTINOS
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE Alimentaciones ADD CONSTRAINT FK_ALIMENTACIONES
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE otro_alimentaciones ADD CONSTRAINT FK_OTRO_ALIMENTACIONES
    FOREIGN KEY(caracteristicas_ali) REFERENCES Alimentaciones(caracteristicas);

ALTER TABLE Intervenciones ADD CONSTRAINT FK_INTERVENCIONES
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE Ubicaciones_movilizaciones ADD CONSTRAINT FK_UBICACIONES_MOVILIZACIONES1
    FOREIGN KEY(numeroguia_movi) REFERENCES Movilizaciones(numeroguia);

ALTER TABLE Ubicaciones_movilizaciones ADD CONSTRAINT FK_UBICACIONES_MOVILIZACIONES2
    FOREIGN KEY(area_ubi, registrodepredio_ubi) REFERENCES Ubicaciones(area, registrodepredio);

ALTER TABLE trabajadores_movilizaciones ADD CONSTRAINT FK_TRABAJADORES_MOVILIZACIONES1
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE trabajadores_movilizaciones ADD CONSTRAINT FK_TRABAJADORES_MOVILIZACIONES2 
    FOREIGN KEY(numeroguia_movi) REFERENCES Movilizaciones(numeroguia);

ALTER TABLE trabajadores_CabezasDeGanado ADD CONSTRAINT FK_TRABAJADORES_CABEZASDEGANADO1
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE trabajadores_CabezasDeGanado ADD CONSTRAINT FK_TRABAJADORES_CABEZASDEGANADO2
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE cabezaDeGanado_Alimentaciones ADD CONSTRAINT FK_CABEZADEGANADO_ALIMENTACIONES1
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE cabezaDeGanado_Alimentaciones ADD CONSTRAINT FK_CABEZADEGANADO_ALIMENTACIONES2
    FOREIGN KEY(caracteristicas_ali) REFERENCES Alimentaciones(caracteristicas);

ALTER TABLE cabezaDeGanado_intervenciones ADD CONSTRAINT FK_CABEZADEGANADO_INTERVENCIONES1
    FOREIGN KEY(id_CG) REFERENCES CabezaDeGanado(id_);

ALTER TABLE cabezaDeGanado_intervenciones ADD CONSTRAINT FK_CABEZADEGANADO_INTERVENCIONES2
    FOREIGN KEY(revision_inter) REFERENCES Intervenciones(revision);

ALTER TABLE trabajador_intervenciones ADD CONSTRAINT FK_TRABAJADOR_INTERVENCIONES1
    FOREIGN KEY(Tipo_idusu, numero_idusu) REFERENCES Usuarios(Tipo_id, numero_id);

ALTER TABLE trabajador_intervenciones ADD CONSTRAINT FK_TRABAJADOR_INTERVENCIONES2
    FOREIGN KEY(revision_inter) REFERENCES Intervenciones(revision);

ALTER TABLE intervenciones_tratamientos ADD CONSTRAINT FK_INTERVENCIONES_TRATAMIENTOS1
    FOREIGN KEY(revision_inter) REFERENCES Intervenciones(revision);

ALTER TABLE intervenciones_tratamientos ADD CONSTRAINT FK_INTERVENCIONES_TRATAMIENTOS2
    FOREIGN KEY(numerodetratamiento_trat) REFERENCES Tratamientos(numerodetratamiento);

ALTER TABLE intervenciones_vacunas ADD CONSTRAINT FK_INTERVENCIONES_VACUNAS1
    FOREIGN KEY(revision_inter) REFERENCES Intervenciones(revision);

ALTER TABLE intervenciones_vacunas ADD CONSTRAINT fkFK_INTERVENCIONES_VACUNAS2
    FOREIGN KEY(numerovacuna_vac) REFERENCES Vacunas(numerovacuna);

ALTER TABLE intervenciones_maternidades ADD CONSTRAINT FK_INTERVENCIONES_MATERNIDADES1
    FOREIGN KEY(revision_inter) REFERENCES Intervenciones(revision);

ALTER TABLE intervenciones_maternidades ADD CONSTRAINT FK_INTERVENCIONES_MATERNIDADES2
    FOREIGN KEY(numerodematernidad_mat) REFERENCES Maternidades(numeromaternidad);

-------------------------------------------------------------------------------------------
--DROPS / Elimina las tablas creadas
DROP TABLE  Fincas CASCADE CONSTRAINTS;
DROP TABLE  Usuarios CASCADE CONSTRAINTS;
DROP TABLE  Direccion_usu_ubi CASCADE CONSTRAINTS;
DROP TABLE  Proveedores CASCADE CONSTRAINTS;
DROP TABLE  Productos CASCADE CONSTRAINTS;
DROP TABLE  Servicios CASCADE CONSTRAINTS;
DROP TABLE  Compradores CASCADE CONSTRAINTS;
DROP TABLE  Trabajadores CASCADE CONSTRAINTS;
DROP TABLE  Acuerdos_trabajadores CASCADE CONSTRAINTS;
DROP TABLE  Ubicaciones CASCADE CONSTRAINTS;
DROP TABLE  Prados CASCADE CONSTRAINTS;
DROP TABLE  Granjas CASCADE CONSTRAINTS;
DROP TABLE  Movilizaciones CASCADE CONSTRAINTS;
DROP TABLE  movilizaciones_totales CASCADE CONSTRAINTS;
DROP TABLE  CabezaDeGanado CASCADE CONSTRAINTS;
DROP TABLE  Destinos CASCADE CONSTRAINTS;
DROP TABLE  Alimentaciones CASCADE CONSTRAINTS;
DROP TABLE  otro_alimentaciones CASCADE CONSTRAINTS;
DROP TABLE  Intervenciones CASCADE CONSTRAINTS;
DROP TABLE  Tratamientos CASCADE CONSTRAINTS;
DROP TABLE  Vacunas CASCADE CONSTRAINTS;
DROP TABLE  Maternidades CASCADE CONSTRAINTS;
DROP TABLE  Ubicaciones_movilizaciones CASCADE CONSTRAINTS;
DROP TABLE  trabajadores_movilizaciones CASCADE CONSTRAINTS;
DROP TABLE  trabajadores_CabezasDeGanado CASCADE CONSTRAINTS;
DROP TABLE  cabezaDeGanado_Alimentaciones CASCADE CONSTRAINTS;
DROP TABLE  cabezaDeGanado_intervenciones CASCADE CONSTRAINTS;
DROP TABLE  trabajador_intervenciones CASCADE CONSTRAINTS;
DROP TABLE  intervenciones_tratamientos CASCADE CONSTRAINTS;
DROP TABLE  intervenciones_vacunas CASCADE CONSTRAINTS;
DROP TABLE  intervenciones_maternidades CASCADE CONSTRAINTS;
------------------------------------------------------------------------------------------------
--CONSULTAS / Consultas SQL
--Consultas Gerenciales
--a.Consultar el total de las Cabezas de Ganado que estan activas y en que ubicación se encuentran 
SELECT area, (SELECT COUNT(id_) FROM CabezaDeGanado) AS totalCabezasDeGanado
FROM Ubicaciones JOIN Fincas ON (Ubicaciones.id_fincas = Fincas.id_)
    JOIN CabezaDeGanado ON (Fincas.id_= CabezaDeGanado.id_fincas)
WHERE CabezaDeGanado.estado = 'Activo' 
GROUP BY Ubicaciones.area;

--b.Consultar el trabajador que tenga la mayor cantidad de intervenciones
SELECT nombre, (SELECT MAX(COUNT(revision)) FROM Intervenciones GROUP BY revision) AS maxintervencionista
FROM Usuarios JOIN Trabajadores ON (Usuarios.Tipo_id = Trabajadores.Tipo_idusu AND Usuarios.numero_id = Trabajadores.numero_idusu )
    JOIN Trabajador_Intervenciones ON (Trabajadores.Tipo_idusu =Trabajador_Intervenciones.Tipo_idusu AND
    Trabajadores.numero_idusu =Trabajador_Intervenciones.numero_idusu )
    JOIN Intervenciones ON (Trabajador_Intervenciones.revision_Inter = Intervenciones.revision);

--c.Consultar cuales son los compradores frecuentes según la fecha de compra
SELECT Tipo_idusu, numero_idusu
FROM Compradores
GROUP BY Tipo_idusu, numero_idusu
HAVING COUNT(fechacompra) > 1;


--d.Consultar el total que gasta la finca en salarios de empleados con tipo de contrato término fijo
SELECT SUM (salario) 
FROM Trabajadores 
WHERE tipodecontrato = 'término fijo';

--e. Consultar cuales son los proveedores a quien mas se le compra productos y servicios
SELECT
  (SELECT nombre FROM Usuarios WHERE Usuarios.Tipo_id = Proveedores.Tipo_idusu AND Usuarios.numero_id = Proveedores.numero_idusu) AS nombre,
  (SELECT MAX(COUNT(servicio_id)) FROM Servicios GROUP BY servicio_id) AS maxservicio,
  (SELECT MAX(COUNT(productos_id)) FROM Productos GROUP BY productos_id) AS maxproducto
FROM
  Usuarios
  JOIN Proveedores ON Usuarios.Tipo_id = Proveedores.Tipo_idusu AND Usuarios.numero_id = Proveedores.numero_idusu
  JOIN Servicios ON Proveedores.servicio_id = Servicios.servicio_id;

--Consultas operativas
--1.Consultar las horas de trabajo de cada trabajador con su respectivo nombre
SELECT Usuarios.nombre AS nombre_Usuarios, Trabajadores.Tipo_idusu, Trabajadores.numero_idusu, Trabajadores.horastrabajadas
    FROM Trabajadores
    JOIN Usuarios ON Trabajadores.Tipo_idusu = Usuarios.Tipo_id AND Trabajadores.numero_idusu = Usuarios.numero_id
    WHERE Trabajadores.cargo = 'Administrativo'
    ORDER BY Usuarios.nombre ASC;


--2.Consultar días de descanso de cada trabajador
SELECT (SELECT nombre FROM Usuarios WHERE Usuarios.numero_id = Trabajadores.numero_idusu) AS nombre_Usuarios, tiempodedescanso
FROM Trabajadores
ORDER BY nombre_Usuarios ASC;



--3.Consultar cuantas cabezas hay en total  activas y su peso promedio
SELECT COUNT(id_) AS Totalid_, (SELECT AVG(pesokg) FROM Destinos) AS prompesokg
FROM CabezaDeGanado
WHERE estado = 'Activo'
GROUP BY id_;


--4.Consultar cuanto ganado de producción hay por vacunar según la ubicación
SELECT U.area, D.tipo, SUM(IV.vacuna) AS totalvacuna
FROM Ubicaciones U
JOIN Fincas F ON U.id_fincas = F.id_
JOIN CabezaDeGanado CG ON F.id_ = CG.id_fincas
JOIN Intervenciones IV ON CG.id_ = IV.id_CG
JOIN (
    SELECT id_CG, tipo
    FROM Destinos
    WHERE tipo = 'Reproduccion'
) D ON IV.id_CG = D.id_CG
GROUP BY U.area, D.tipo;


--5.Consultar cuanto ganado esta destinado a ser tipo Leche y que esten en maternidad
SELECT (SELECT COUNT (tipo) FROM Destinos) AS LecheYMaternidad
FROM Maternidades JOIN Intervenciones_Maternidades ON (Maternidades.numeromaternidad = Intervenciones_Maternidades.numerodematernidad_Mat) 
JOIN Intervenciones ON (Intervenciones_Maternidades.revision_Inter = Intervenciones.revision)
JOIN CabezaDeGanado_Intervenciones ON (Intervenciones.revision = CabezaDeGanado_Intervenciones.revision_Inter)
JOIN CabezaDeGanado ON ( CabezaDeGanado_Intervenciones.id_CG = CabezaDeGanado.id_)
JOIN Destinos ON (CabezaDeGanado.id_= Destinos.id_CG)
WHERE Destinos.tipo = 'Leche';


--6.Consultar las Cabezas de Ganado que estan proximas a dar crias
SELECT CabezaDeGanado.id_, Intervenciones.fechadeculminacion 
FROM Maternidades JOIN Intervenciones_Maternidades ON (Maternidades.numeromaternidad = Intervenciones_Maternidades.numerodematernidad_Mat) 
JOIN Intervenciones ON (Intervenciones_Maternidades.revision_Inter = Intervenciones.revision)
JOIN CabezaDeGanado_Intervenciones ON (Intervenciones.revision = CabezaDeGanado_Intervenciones.revision_Inter)
JOIN CabezaDeGanado ON ( CabezaDeGanado_Intervenciones.id_CG = CabezaDeGanado.id_);

--7. Consultar las Cabezas de Ganado que están en mal estado según la ubicacion
SELECT area, CabezaDeganado.id_
FROM Ubicaciones JOIN Fincas ON (Ubicaciones.id_fincas = Fincas.id_)
    JOIN CabezaDeGanado ON (Fincas.id_= CabezaDeGanado.id_fincas)
    JOIN Intervenciones ON (CabezaDeGanado.id_ = Intervenciones.id_CG)
WHERE estadodesalud = 'Malo';


--XPoblar

TRUNCATE TABLE Fincas; 
TRUNCATE TABLE Usuarios; 
TRUNCATE TABLE Direccion_usu_ubi; 
TRUNCATE TABLE Compradores; 
TRUNCATE TABLE Trabajadores; 
TRUNCATE TABLE Acuerdos_trabajadores; 
TRUNCATE TABLE CabezaDeGanado; 
TRUNCATE TABLE Destinos; 
TRUNCATE TABLE Ubicaciones; 
TRUNCATE TABLE Prados; 
TRUNCATE TABLE Granjas; 
TRUNCATE TABLE Intervenciones; 
TRUNCATE TABLE Tratamientos;
TRUNCATE TABLE Vacunas; 
TRUNCATE TABLE Maternidades; 
TRUNCATE TABLE Alimentaciones; 
TRUNCATE TABLE otro_alimentaciones; 
TRUNCATE TABLE Movilizaciones; 
TRUNCATE TABLE movilizaciones_totales; 
TRUNCATE TABLE Proveedores; 
TRUNCATE TABLE Servicios; 
TRUNCATE TABLE Productos; 
TRUNCATE TABLE cabezaDeGanado_intervenciones; 
TRUNCATE TABLE cabezaDeGanado_Alimentaciones; 
TRUNCATE TABLE trabajadores_movilizaciones; 
TRUNCATE TABLE Ubicaciones_movilizaciones; 
TRUNCATE TABLE trabajador_intervenciones; 
TRUNCATE TABLE trabajadores_CabezasDeGanado; 
TRUNCATE TABLE intervenciones_tratamientos; 
TRUNCATE TABLE intervenciones_vacunas; 
TRUNCATE TABLE intervenciones_maternidades; 


--Poblar OK
--Fincas
insert into Fincas (id_, nombre, especificaciones) values (1001, 'Primavera', 'B4-5C-29-57-86-9D');
insert into Fincas (id_, nombre, especificaciones) values (1005, 'Primavera', 'B4-5C-29-57-86-9D');

--Usuarios
insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo) values ('Jeanna Skeen', 1001, 1001, 1, '211.35.40.32/20', '07/03/2021', 1001, 'jskeen0@reuters.com');
insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo) values ('Jeanna Skeen', 1005, 1005, 1, '211.35.40.32/20', '07/03/2021', 1005, 'jskeen0@reuters.com');

--Compradores
insert into Compradores (Tipo_idusu, numero_idusu, fechacompra, especificaciones, razasdecompra, tipos, mododepago) values (1001, 1001, '19/03/1989', 'lreekierr@google.de', 'Leif', null, 'diners-club-carte-blanche');

--Trabajadores
insert into Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso) values (1001, 1001, '16/05/2010', 'Administrativo', 'Chatterp', 1001, 'Soltero', 'Letti Lynagh', 0, 1001, 'accidental', 2167, 4561089, '1001horas');
insert into Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso) values (1005, 1005, '16/05/2010', 'Administrativo', 'Chatterp', 1005, 'Soltero', 'Letti Lynagh', 0, 1005, 'accidental', 2167, 4561089, '1005horas');

--Acuerdos_trabajadores
insert into Acuerdos_trabajadores (acuerdo, Tipo_idusu, numero_idusu) values (1005, 1005, 1005);

--Servicios
insert into Servicios (servicio_id, tipodemecanismo, productos, tecnologia, comercializacion, proceso, clasificacion, criadeanimales) values (1001, 'Personal', 'Ganaderos', null, 'Ganadera', 'Activo', 'Alta', 1);

--Productos 
insert into Productos (productos_id, fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa) values (1002, '18/02/1962', 'Ganaderos', null, 'Ganadera', null, null, 58997614, 'Trumpeter swan');

--Proveedores
insert into Proveedores (Tipo_idusu, numero_idusu, nombre, registrosanitario, tipo, especificaciones, servicio_id, producto_id) values (1005, 1005, 'Tamarra Brickett', 1001, 'Vaca', 'Ganaderia', 1001, 1002);

--Movilizaciones 
insert into Movilizaciones (numeroguia, guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechaderegistro, fechademovilizacion) values (1001, 'guia1000', 'Lambdean', 1001, 'Russia', 'Poland', 'Patti Lambdean', 'Transporte', 'Ganaderia', '02/04/2004', '12/06/2019');

--movilizaciones_totales
insert into movilizaciones_totales (total, numeroguia_movi) values (1001, 1001);

--Ubicaciones 
insert into Ubicaciones (area, registrodepredio, higiene, tipo, clasificacion, id_Fincas) values ('area1111', 1001, 'Adaptable', 'Ganado', 1001, 1001);

--Ubicaciones_movilizaciones
insert into Ubicaciones_movilizaciones (numeroguia_movi, area_ubi, registrodepredio_ubi) values (1001, 'area1111', 1001);

--trabajadores_movilizaciones
insert into trabajadores_movilizaciones (Tipo_idusu, numero_idusu, numeroguia_movi) values (1001, 1001, 1001);

--Direccion_usu_ubi
insert into Direccion_usu_ubi (direccion, Tipoid_usu, numeroid_usu, area_ubi, registrodepredio_ubi) values ('direccion1001', 1001, 1001, 'area1111', 1001);

--prados
INSERT INTO prados(area_ubi, registropredio_ubi, sostenibilidad, tipodepastaje, clima, alturasobreniveldelmar) 
VALUES('area1111', 1001, 'alta', 'seco', 'arido', 1001);

--Granjas
INSERT INTO granjas(area_ubi, registropredio_ubi, sistemadeordeno, calidad, establo)
VALUES ('area1111', 1001, 1, 'excelente', 1);
        
--CabezasDeGanado
INSERT INTO cabezadeganado(id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
VALUES ('1234567', 'nice', 'pepe', '23/08/2011', 'muuu', 'caleto', 'M', 'negro', 1, 250, 'mixta', 'julio', NULL,NULL, NULL, NULL, 1001);

--Destinos
INSERT INTO destinos(registronacimiento, tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto , crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, id_CG)
VALUES ('12345', 'leche', NULL, NULL, NULL, NULL, NULL, NULL , 0, 'MIXTA', 1, 'julio', NULL, NULL, 0, NULL, 250, 'culminado', 'seco', 'corta', '123456', '1234567');

--Alimentaciones
INSERT INTO alimentaciones(caracteristicas, pastaje, suplementos, vitaminas, liquido, salmineral, melaza, id_CG)
VALUES ('medicada al 12.5 %', 1, 1, 1, 1, 1, 1, '1234567');

--CabezasDeGanado_Alimentaciones
INSERT INTO CabezaDeGanado_Alimentaciones(id_CG, caracteristicas_ali)
VALUES ('1234567', 'medicada al 12.5 %');
        
--Otros_Alimentaciones
INSERT INTO otro_alimentaciones(otro, caracteristicas_ali)
VALUES ('juanchopaz', 'medicada al 12.5 %');

--Intervenciones
INSERT INTO intervenciones(revision, desparacitante, vacuna, inseminacion, fechadeintervencion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
VALUES ('12345', 'intosevasgal', 0, 0, '12/05/2020', 'madan', 'revision', '15/05/2020', 'media', '1234567');
        
--CabezaDeGanado_Intervenciones
INSERT INTO cabezadeganado_intervenciones (id_CG, revision_inter)
VALUES ('1234567', '12345');

--Tratamientos
INSERT INTO tratamientos(numerodetratamiento, nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados)
VALUES ('12344', 'rixabodona', 35, 'nada', 'ninguna', 'ninguno');

--Vacunas
INSERT INTO vacunas(numerovacuna, nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
VALUES ('12347', 'rabia', 98, 'ninguna', 12, 'ninguno', 'intramus', 16, 'reacciones leves', '14/05/2021', '14/06/2021', 'nomejo');

--Maternidades
INSERT INTO maternidades(numeromaternidad, fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento)
VALUES ('12345', 'alta', '40', 'amplio', '1', 5, 'ninguno', 0, 'positivo', 'ninguna', 1, 'si', 'infeccion', 'abdomen');        

--Intervenciones_Maternidades
INSERT INTO intervenciones_maternidades(revision_inter, numerodematernidad_mat)
VALUES ('12345', '12345');


----Poblar NOOK
----Fincas
--insert into Fincas (id_, nombre, especificaciones) values (null, 'Primavera', 'B4-5C-29-57-86-9D');
--
----Usuarios
--insert into Usuarios (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo) values ('Jeanna Skeen', 11, 1001, 1, '211.35.40.32/20', '07/03/2021', 1001, 'jskeen0@reuters.com');
--
----Compradores
--insert into Compradores (Tipo_idusu, numero_idusu, fechacompra, especificaciones, razasdecompra, tipos, mododepago) values (1001, 100, '19/03/1989', 'lreekierr@google.de', 'Leif', null, 'diners-club-carte-blanche');
--
----Trabajadores
--insert into Trabajadores (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso) values (1001, 1001, '16/05/2010', 'Administrativo', 'Chatterp', 1001, 'Soltero', 'Letti Lynagh', 0, 1001, 'accidental', 2167, 4561089, null);
--
----Acuerdos_trabajadores
--insert into Acuerdos_trabajadores (acuerdo, Tipo_idusu, numero_idusu) values (1002, 1002, 1005);
--
----Servicios
--insert into Servicios (servicio_id, tipodemecanismo, productos, tecnologia, comercializacion, proceso, clasificacion, criadeanimales) values (null, 'Personal', 'Ganaderos', null, 'Ganadera', 'Activo', 'Alta', 1);
--
----Productos 
--insert into Productos (productos_id, fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa) values (null, '18/02/1962', 'Ganaderos', null, 'Ganadera', null, null, 58997614, 'Trumpeter swan');
--
----Proveedores
--insert into Proveedores (Tipo_idusu, numero_idusu, nombre, registrosanitario, tipo, especificaciones, servicio_id, producto_id) values (1101, 1001, 'Tamarra Brickett', 1001, 'Vaca', 'Ganaderia', 1001, 11101);
--
----Movilizaciones 
--insert into Movilizaciones (numeroguia, guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechaderegistro, fechademovilizacion) values (null, 'guia1000', 'Lambdean', 1001, 'Russia', 'Poland', 'Patti Lambdean', 'Transporte', 'Ganaderia', '02/04/2004', '12/06/2019');
--
----movilizaciones_totales
--insert into movilizaciones_totales (total, numeroguia_movi) values (null, 1001);
--
----Ubicaciones
--insert into Ubicaciones (area, registrodepredio, higiene, tipo, clasificacion, id_Fincas) values (null, 1001, 'Adaptable', 'Ganado', 1001, 1001);
--
----Ubicaciones_movilizaciones
--insert into Ubicaciones_movilizaciones (numeroguia_movi, area_ubi, registrodepredio_ubi) values (null, 'area1001', 1001);
--
----trabajadores_movilizaciones
--insert into trabajadores_movilizaciones (Tipo_idusu, numero_idusu, numeroguia_movi) values (null, 1001, 1001);
--
----Direccion_usu_ubi
--insert into Direccion_usu_ubi (direccion, Tipoid_usu, numeroid_usu, area_ubi, registrodepredio_ubi) values ('direccion1001', 1001, 1001, 'area1001', null);

--prados
--INSERT INTO prados(area_ubi, registropredio_ubi, sostenibilidad, tipodepastaje, clima, alturasobreniveldelmar) 
--VALUES('rocosa', '12345', 'alta', 'seco', 'arido', 2000);

--Granjas
--INSERT INTO granjas(area_ubi, registropredio_ubi, sistemadeordeno, calidad, establo)
--VALUES ('boyaca', '123456', 'juancho', 'excelente', 1);
        
--CabezasDeGanado
--INSERT INTO cabezadeganado(id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
--VALUES ('1234567', 'nice', 'pepe', 'juancho', 'muuu', 'caleto', 'M', 'negro', 1, 250, 'mixta', 'julio', 'rocosa', '12345', NULL, NULL, 1001);

--Destinos
--INSERT INTO destinos(registronacimiento, tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto , crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, id_CG)
--VALUES ('12345', 'leche', 'juancho', 'juancho', 'juancho', 'juancho', NULL, NULL , 0, 'MIXTA', 1, 'julio', NULL, NULL, 0, NULL, 250, 'culminado', 'seco', 'corta', '123456', '12345467');

--CabezasDeGanado_Alimentaciones
--INSERT INTO CabezasDeGanado_Alimentaciones(id_CG, caracteristicas_ali)
--VALUES (FALSE, TRUE);

--Alimentaciones
--INSERT INTO alimentaciones(caracteristicas, pastaje, suplementos, vitaminas, liquido, salmineral, melaza, id_CG)
--VALUES ('medicada al 12.5 %', 'juancho', 'juancho', 'juancho', 'juancho', 'juancho', 1, '1234567');
        
--Otros_Alimentaciones
--INSERT INTO otro_alimentaciones(otro, caracteristicas_ali)
--VALUES (TRUE, FALSE);

--CabezaDeGanado_Intervenciones
--INSERT INTO cabezadeganado_intervenciones (id_CG, revision_inter)
--VALUES (TRUE, FALSE);

--Intervenciones
--INSERT INTO intervenciones(revision, desparacitante, vacuna, inseminacion, fechadeintervencion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
--VALUES ('12345', 'intosevasgal', 'juancho', 'juancho', '12/05/2020', 'madan', 'revision', '15/05/2020', 'media', '1234567');
        
--Intervenciones_Tratamientos
--INSERT INTO intervenciones_tratamientos (revision_inter, numerodetratamiento_trat)
--VALUES (TRUE, FALSE);

--Tratamientos
--INSERT INTO tratamientos(numerodetratamiento, nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados)
--VALUES ('12345', 'rixabodona', 'juancho', 'nada', 'ninguna', 'ninguno');

--Intervenciones_Vacunas
--INSERT INTO intervenciones_vacunas(revision_inter, numerovacuna_vac)
--VALUES (TRUE, FALSE);

--Vacunas
--INSERT INTO vacunas(numerovacuna, nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
--VALUES (TRUE, FALSE, 'juancho', 'ninguna', 12, 'ninguno', 'intramus', 16, 'reacciones leves', '14/05/2021', '14/06/2021', 'nomejo');

--Intervenciones_Maternidades
--INSERT INTO intervenciones_maternidades(revision_inter, numerodematenidad_mat)
--VALUES (TRUE, FALSE);

--Maternidades
--INSERT INTO maternidades(numeromaternidad, fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento)
--VALUES ('1234', 'alta', '40', TRUE, FALSE, 'juancho', 'ninguno', 0, 'positivo', 'ninguna', 1, 'si', 'infeccion', 'abdomen');        

--Trabajadores_CabezaDeGanado
--INSERT INTO trabajadores_cabezadeganado(tipo_idusu, numero_idusu, id_CG)
--VALUES (TRUE, FALSE, 1235);

--Trabajadores_Intervenciones
--INSERT INTO trabajdores_intervenciones(tipo_idusu, numero_idusu, revision_inter)
--VALUES(TRUE, FALSE 12345);
