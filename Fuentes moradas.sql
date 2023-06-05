--Indices / Definición de índices
--Consultas Gerenciales 
--Consultas Operativas
--1.
CREATE UNIQUE INDEX IX_USUARIOS_NOMBRE ON Usuarios (id_fincas);
--2.
CREATE UNIQUE INDEX IX_TRABAJADORES_TIEMPODEDESCANSO ON Trabajadores (tiempodedescanso);
--4.
CREATE UNIQUE INDEX IX_UBICACIONES_AREA ON Ubicaciones (area);


--Vistas / Definición de vistas
--1.Consultar las horas de trabajo de cada trabajador con su respectivo nombre
CREATE VIEW VHorasDeTrabajador AS
    SELECT Usuarios.nombre AS nombre_Usuarios, Trabajadores.Tipo_idusu, Trabajadores.numero_idusu, Trabajadores.horastrabajadas
    FROM Trabajadores
    JOIN Usuarios ON Trabajadores.Tipo_idusu = Usuarios.Tipo_id AND Trabajadores.numero_idusu = Usuarios.numero_id
    WHERE Trabajadores.cargo = 'Administrativo'
    ORDER BY Usuarios.nombre ASC;


--2.Consultar días de descanso de cada trabajador
CREATE VIEW VDiasDeDescansoTrabajador AS
SELECT (SELECT nombre FROM Usuarios WHERE Usuarios.numero_id = Trabajadores.numero_idusu) AS nombre_Usuarios, tiempodedescanso
FROM Trabajadores
ORDER BY nombre_Usuarios ASC;



--3.Consultar cuantas cabezas hay en total por todas las Cabezas de Ganado activas con peso promedio
CREATE VIEW VTotalCabezaDeGanado AS
SELECT COUNT(id_) AS Totalid_, (SELECT AVG(pesokg) FROM Destinos) AS prompesokg
FROM CabezaDeGanado
WHERE estado = 'Activo'
GROUP BY id_;


--4.Consultar cuanto ganado de producción hay por vacunar según la ubicación
CREATE VIEW VProduccionParaVacunar AS
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
CREATE VIEW VTipoLecheYMaternidad AS
SELECT (SELECT COUNT (tipo) FROM Destinos) AS LecheYMaternidad
FROM Maternidades JOIN Intervenciones_Maternidades ON (Maternidades.numeromaternidad = Intervenciones_Maternidades.numerodematernidad_Mat) 
JOIN Intervenciones ON (Intervenciones_Maternidades.revision_Inter = Intervenciones.revision)
JOIN CabezaDeGanado_Intervenciones ON (Intervenciones.revision = CabezaDeGanado_Intervenciones.revision_Inter)
JOIN CabezaDeGanado ON ( CabezaDeGanado_Intervenciones.id_CG = CabezaDeGanado.id_)
JOIN Destinos ON (CabezaDeGanado.id_= Destinos.id_CG)
WHERE Destinos.tipo = 'Leche';


--6.Consultar las Cabezas de Ganado que estan proximas a dar crias
CREATE VIEW VProximasparadarcrias AS
SELECT CabezaDeGanado.id_, Intervenciones.fechadeculminacion 
FROM Maternidades JOIN Intervenciones_Maternidades ON (Maternidades.numeromaternidad = Intervenciones_Maternidades.numerodematernidad_Mat) 
JOIN Intervenciones ON (Intervenciones_Maternidades.revision_Inter = Intervenciones.revision)
JOIN CabezaDeGanado_Intervenciones ON (Intervenciones.revision = CabezaDeGanado_Intervenciones.revision_Inter)
JOIN CabezaDeGanado ON ( CabezaDeGanado_Intervenciones.id_CG = CabezaDeGanado.id_);

--7. Consultar las Cabezas de Ganado que están en mal estado según la ubicacion
CREATE VIEW VCabezadeGanadoMalEstado AS
SELECT area, CabezaDeganado.id_
FROM Ubicaciones JOIN Fincas ON (Ubicaciones.id_fincas = Fincas.id_)
    JOIN CabezaDeGanado ON (Fincas.id_= CabezaDeGanado.id_fincas)
    JOIN Intervenciones ON (CabezaDeGanado.id_ = Intervenciones.id_CG)
WHERE estadodesalud = 'Malo';

--XIndicesVistas / Eliminación de vistas e indices

DROP INDEX IX_USUARIOS_NOMBRE;
DROP INDEX IX_TRABAJADORES_TIEMPODEDESCANSO;
DROP INDEX IX_UBICACIONES_AREA;

DROP VIEW VHorasDeTrabajador;
DROP VIEW VDiasDeDescansoTrabajador;
DROP VIEW VTotalCabezaDeGanado;
DROP VIEW VProduccionParaVacunar;
DROP VIEW VTipoLecheYMaternidad;
DROP VIEW VProximasparadarcrias;
DROP VIEW VCabezadeGanadoMalEstado;

--SeguridadOK
SELECT * FROM VHorasDeTrabajador;
SELECT * FROM VDiasDeDescansoTrabajador;
SELECT * FROM VTotalCabezaDeGanado;
SELECT * FROM VProduccionParaVacunar;
SELECT * FROM VTipoLecheYMaternidad;
SELECT * FROM VProximasparadarcrias;
SELECT * FROM VCabezadeGanadoMalEstado;

