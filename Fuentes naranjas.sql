--CRUDE
--PC_FINCAS
CREATE OR REPLACE PACKAGE PC_FINCAS AS
    PROCEDURE add_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2);
    PROCEDURE mo_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2);
    FUNCTION co_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE el_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2);
    FUNCTION Co4JFincas(id_ VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION Co7JFincas(id_ VARCHAR2) RETURN SYS_REFCURSOR;
END PC_FINCAS;
/

--PC_UBICACIONES
CREATE OR REPLACE PACKAGE PC_UBICACIONES AS
	PROCEDURE add_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2);
	PROCEDURE modificar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2);
	FUNCTION consultar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2);
	FUNCTION Co4Ubicaciones(area VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE Co4JUbicaciones(id_fincas VARCHAR2);
	FUNCTION Co7Ubicaciones(area VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE Co7JUbicaciones(id_fincas VARCHAR2);
    PROCEDURE add_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER);
	PROCEDURE modificar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER);
	FUNCTION consultar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER);
    PROCEDURE add_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER);
	PROCEDURE modificar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER);
	FUNCTION consultar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER);
END PC_UBICACIONES;
/

--PC_MOVILIZACIONES
CREATE OR REPLACE PACKAGE PC_MOVILIZACIONES AS
	PROCEDURE add_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE);
	PROCEDURE modificar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE);
	FUNCTION consultar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE);
	PROCEDURE add_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2);
	PROCEDURE modificar_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2);
	FUNCTION consultar_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2);
	PROCEDURE add_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2); 
    PROCEDURE modificar_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2);
    FUNCTION consultar_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2);
END PC_MOVILIZACIONES;
/

--PC_CABEZADEGANADO
CREATE OR REPLACE PACKAGE PC_CABEZADEGANADO AS
	PROCEDURE add_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2);
	PROCEDURE modificar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2);
	FUNCTION consultar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2);
	FUNCTION Co3CabezaDeGanado(id_ VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE Co4JCabezaDeGanado(id_fincas VARCHAR2, id_ VARCHAR2);
	PROCEDURE Co5JCabezaDeGanado(id_ VARCHAR2);
	FUNCTION  Co6CabezaDeGanado(id_ VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE Co6JCabezaDeGanado(id_ VARCHAR2);
	FUNCTION  Co7CabezaDeGanado(id_ VARCHAR2)  RETURN SYS_REFCURSOR;
	PROCEDURE CoJ7CabezaDeGanado(id_fincas VARCHAR2, id_ VARCHAR2);
    PROCEDURE add_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2);
	PROCEDURE modificar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2);
	FUNCTION consultar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2);
	FUNCTION Co3Destinos(pesokg INTEGER) RETURN SYS_REFCURSOR;
	PROCEDURE Co4JDestinos(id_CG VARCHAR2);
	FUNCTION Co5Destinos(tipo VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE Co5JDestinos(id_CG VARCHAR);
    PROCEDURE add_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2);
	PROCEDURE modificar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2);
	FUNCTION consultar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2);
    PROCEDURE add_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2);
	PROCEDURE modificar_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2);
	FUNCTION consultar_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2);
	FUNCTION consultar_cabezadeganado_alimentaciones(id_CG VARCHAR2, caracteristicas_ali VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_cabezadeganado_alimentaciones(id_CG VARCHAR2, caracteristicas_ali VARCHAR2);
    FUNCTION consultar_cabezadeganado_intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_cabezadeganado_intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2);
    PROCEDURE Co5JCabezasDeGanado_Intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2);
	PROCEDURE Co6JCabezasDeGanado_Intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2);
END PC_CABEZADEGANADO;
/

--PC_INTERVENCIONES
CREATE OR REPLACE PACKAGE PC_INTERVENCIONES AS
    PROCEDURE add_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2);
    PROCEDURE modificar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2);
	FUNCTION consultar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2);
	FUNCTION Co4Intervenciones(vacuna NUMBER) RETURN SYS_REFCURSOR;
	PROCEDURE Co4JIntervenciones(id_CG VARCHAR);
	PROCEDURE Co5JIntervenciones(revision INTEGER);
	PROCEDURE Co6Intervenciones(fechadeintervencion DATE);
    PROCEDURE add_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2);
	PROCEDURE modificar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2);
	FUNCTION consultar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2);
    PROCEDURE add_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2);
	PROCEDURE modificar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2);
	FUNCTION consultar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2);
    PROCEDURE add_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2);
	PROCEDURE modificar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2);
	FUNCTION consultar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_meternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2);
	PROCEDURE Co5JMaternidades(numeromaternidad VARCHAR2);
	PROCEDURE Co6JMaternidades(numeromaternidad VARCHAR2);
    FUNCTION consultar_intervenciones_tratamientos(revision_inter VARCHAR2, numerodetratamiento_trat INTEGER) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_intervenciones_tratamientos(revision_inter VARCHAR2, numerodetratamiento_trat INTEGER);
    FUNCTION consultar_intervenciones_vacunas(revision_inter VARCHAR2, numerovacuna_vac VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_intervenciones_vacunas(revision_inter VARCHAR2, numerovacuna_vac VARCHAR2);
    FUNCTION consultar_intervenciones_maternidades(revision_inter VARCHAR2, numerodematenidad_mat VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_intervenciones_maternidades(revision_inter VARCHAR2, numerodematenidad_mat VARCHAR2);
	PROCEDURE Co5JIntervenciones_Maternidades(revision_inter VARCHAR2, numerodematernidad_mat VARCHAR2);
	PROCEDURE Co6JIntervenciones_Maternidades(revision_inter VARCHAR2, numerodematernidad_mat VARCHAR2);
END PC_INTERVENCIONES;
/

--PC_USUARIOS
CREATE OR REPLACE PACKAGE PC_USUARIOS AS
    PROCEDURE add_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2);
    PROCEDURE mo_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2);
    FUNCTION co_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE el_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2);
    FUNCTION Co1Usuarios(nombre VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION Co2Usuarios(nombre VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE add_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2);
    PROCEDURE modificar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2);
    FUNCTION consultar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2);
    PROCEDURE add_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER);
    PROCEDURE modificar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER);
    FUNCTION consultar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER);
    PROCEDURE add_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    PROCEDURE modificar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    FUNCTION consultar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    PROCEDURE add_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2);
    PROCEDURE modificar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2);
    FUNCTION consultar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2);
    FUNCTION Co1Trabajadores(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, horastrabajadas INTEGER) RETURN SYS_REFCURSOR;
    PROCEDURE add_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2);
    PROCEDURE modificar_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2);
    FUNCTION consultar_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2);
    PROCEDURE add_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2);
    PROCEDURE modificar_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2);
    FUNCTION consultar_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2);
    PROCEDURE add_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2);
    PROCEDURE modificar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2);
    FUNCTION consultar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2);
    PROCEDURE add_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2);
    PROCEDURE modificar_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2);
    FUNCTION consultar_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2);
    FUNCTION consultar_trabajadores_cabezadeganado(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_trabajadores_cabezadeganado(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, id_CG VARCHAR2);
    FUNCTION consultar_trabajdores_intervenciones(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, revision_inter VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_trabajdores_intervenciones(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, revision_inter VARCHAR2);
END PC_USUARIOS;
/



--CRUDI
--BODY FINCAS
CREATE OR REPLACE PACKAGE BODY PC_FINCAS AS
    PROCEDURE add_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) IS 
	BEGIN 
		INSERT INTO Fincas(id_, nombre, especificaciones)
		VALUES (id_, nombre, especificaciones);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20010, 'Error al insertar Finca.');
	END add_Fincas;
    
    PROCEDURE mo_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) IS
    BEGIN
       UPDATE Fincas SET especificaciones = especificaciones
	   WHERE especificaciones = NULL OR nombre = NULL;
	   COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-21010, 'Error al modificar Finca.');
    END;
    
    FUNCTION co_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) RETURN SYS_REFCURSOR IS
        co_Fincas SYS_REFCURSOR;
    BEGIN
        OPEN co_Fincas FOR
            SELECT * FROM Fincas;
        RETURN co_Fincas;
    END co_Fincas;
    
    PROCEDURE el_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) IS
    BEGIN
        DELETE FROM Fincas
        WHERE id_ = id_;
    END el_Fincas;
    

    FUNCTION Co4JFincas(id_ VARCHAR2) RETURN SYS_REFCURSOR IS
    Co4JFincasCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co4JFincasCursor FOR
            SELECT id_ FROM Fincas;
        RETURN Co4JFincasCursor;
    END Co4JFincas;
    
    FUNCTION Co7JFincas(id_ VARCHAR2) RETURN SYS_REFCURSOR IS
    Co7JFincasCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co7JFincasCursor FOR
            SELECT id_ FROM Fincas;
        RETURN Co7JFincasCursor;
    END Co7JFincas;
    
END PC_FINCAS;
/

--BODY PC_UBICACIONES
CREATE OR REPLACE PACKAGE BODY PC_UBICACIONES AS
  PROCEDURE add_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) IS
  BEGIN
    INSERT INTO Ubicaciones(area, registrodepredio, higiene, tipo, clasificacion, id_fincas)
    VALUES (area, registrodepredio, higiene, tipo, clasificacion, id_fincas);
    COMMIT;
  END add_ubicacion;
  
  PROCEDURE modificar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) IS
  BEGIN
    UPDATE Ubicaciones SET higiene = NULL;
    COMMIT;
  END modificar_ubicacion;
  
  FUNCTION consultar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR IS
    consultar_ubicacion_cursor SYS_REFCURSOR;
  BEGIN
    OPEN consultar_ubicacion_cursor FOR
      SELECT * FROM Ubicaciones;
    RETURN consultar_ubicacion_cursor;
  END consultar_ubicacion;
  
  PROCEDURE eliminar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) IS
  BEGIN
    DELETE FROM Ubicaciones WHERE id_fincas = id_fincas;
    COMMIT;
  END eliminar_ubicacion;
  
  FUNCTION Co4Ubicaciones(area VARCHAR2) RETURN SYS_REFCURSOR IS
    Co4UbicacionesCursor SYS_REFCURSOR;
  BEGIN
    OPEN Co4UbicacionesCursor FOR
      SELECT area FROM Ubicaciones;
    RETURN Co4UbicacionesCursor;
  END Co4Ubicaciones;
  
  PROCEDURE Co4JUbicaciones(id_fincas VARCHAR2) IS
    ubicaciones_id_fincas NUMBER;
  BEGIN
    SELECT id_fincas INTO ubicaciones_id_fincas FROM Ubicaciones;
  END Co4JUbicaciones;
  
  FUNCTION Co7Ubicaciones(area VARCHAR2) RETURN SYS_REFCURSOR IS
    Co7UbicacionesCursor SYS_REFCURSOR;
  BEGIN
    OPEN Co7UbicacionesCursor FOR
      SELECT area FROM Ubicaciones;
    RETURN Co7UbicacionesCursor;
  END Co7Ubicaciones;
  
  PROCEDURE Co7JUbicaciones(id_fincas VARCHAR2) IS
    ubicaciones_id_fincas NUMBER;
  BEGIN
    SELECT id_fincas INTO ubicaciones_id_fincas FROM Ubicaciones;
  END Co7JUbicaciones;
    PROCEDURE  add_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER)
        IS
        BEGIN
        INSERT INTO granjas(area_ubi, registropredio_ubi, sistemadeordeno, calidad, establo)
            VALUES (area_ubi, registropredio_ubi, sistemadeordeno, calidad, establo);
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00004, 'Error al adicionar granjas ');
    END add_granjas;

    PROCEDURE modificar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER)
        IS BEGIN
        UPDATE Granjas SET sistemadeordeno = sistemadeordeno, calidad = calidad,  establo = establo
        WHERE area_ubi = area_ubi AND registropredio_ubi = registropredio_ubi;
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00005, 'Error al modificar granjas');
    END modificar_granjas;

    FUNCTION consultar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER) RETURN SYS_REFCURSOR
        IS consultar_granjasCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_granjasCursor FOR
                SELECT *
                FROM Granjas;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_granjasCursor;
    END consultar_granjas;

    PROCEDURE eliminar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER)
        IS
        BEGIN
        DELETE
        FROM Granjas
        WHERE area_ubi = area_ubi AND registropredio_ubi = registropredio_ubi;
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00006, 'Error al ');
    END eliminar_granjas;
    PROCEDURE  add_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER)
        IS
        BEGIN
        INSERT INTO Prados(area_ubi, registropredio_ubi, sostenibilidad, tipodepastaje, clima, alturasobreniveldelmar)
            VALUES (area_ubi, registropredio_ubi, sostenibilidad, tipodepastaje, clima, alturasobreniveldelmar);
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00001, 'Error al adicionar informacion en tabla prado');
    END add_prados;

    PROCEDURE modificar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER)
        IS BEGIN
        UPDATE Prados SET sostenibilidad = sostenibilidad, tipodepastaje = tipodepastaje, clima = clima, alturasobreniveldelmar = alturasobreniveldelmar
        WHERE area_ubi = area_ubi AND registropredio_ubi = registropredio_ubi;
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00002, 'Error al ');
    END modificar_prados;

    FUNCTION consultar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER) RETURN SYS_REFCURSOR
        IS consultar_pradosCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_pradosCursor FOR
                SELECT *
                FROM Prados;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE area_ubi = area_ubi AND registropredio_ub = registropredio_ub;
            RETURN consultar_pradosCursor;
    END consultar_prados;

    PROCEDURE eliminar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER)
        IS
        BEGIN
        DELETE
        FROM Prados
        WHERE area_ubi = area_ubi AND registropredio_ubi = registropredio_ubi;
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00003, 'Error al ');
        END eliminar_prados;

END PC_UBICACIONES;
/

--BODY PC_MOVILIZACIONES
CREATE OR REPLACE PACKAGE BODY PC_MOVILIZACIONES AS
    PROCEDURE add_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE) IS
	BEGIN 
        INSERT INTO Movilizaciones(numeroguia, guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechaderegistro, fechademovilizacion)
        VALUES (numeroguia, guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechaderegistro, fechademovilizacion); 
        COMMIT; 
    END add_movilizacion;

    PROCEDURE modificar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE) IS
	BEGIN 
        UPDATE Movilizaciones
        SET guiasdemovilizacion = guiasdemovilizacion
        WHERE numeroguia = numeroguia; 
        COMMIT; 
    END modificar_movilizacion;

    FUNCTION consultar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE) RETURN SYS_REFCURSOR IS
	    consultar_movilizacionCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_movilizacionCursor FOR 
        SELECT * 
        FROM trabajadores_movilizaciones
        WHERE numeroguia = numeroguia;
        RETURN consultar_movilizacionCursor; 
    END;

    PROCEDURE eliminar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE)
    IS
    BEGIN 
        DELETE 
        FROM trabajadores_movilizaciones
        WHERE numeroguia = numeroguia;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END;

    PROCEDURE add_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2) IS
    BEGIN 
        INSERT INTO movilizaciones_totales(total, numeroguia_movi)
        VALUES (total, numeroguia_movi); 
        COMMIT; 
    END add_movilizacion_total;

    PROCEDURE modificar_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2) IS
    BEGIN 
        UPDATE movilizaciones_totales
        SET total = total
        WHERE numeroguia_movi = numeroguia_movi; 
        COMMIT; 
    END modificar_movilizacion_total;

    FUNCTION consultar_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2) RETURN SYS_REFCURSOR IS
        consultar_movilizacionCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_movilizacionCursor FOR 
        SELECT * 
        FROM movilizaciones_totales
        WHERE numeroguia_movi = numeroguia_movi;
        RETURN consultar_movilizacionCursor; 
    END consultar_movilizacion_total;

    PROCEDURE eliminar_movilizacion_total(total VARCHAR2, numeroguia_movi VARCHAR2) IS
    BEGIN 
        DELETE 
        FROM movilizaciones_totales
        WHERE numeroguia_movi = numeroguia_movi;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END eliminar_movilizacion_total;

    PROCEDURE add_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) IS 
    BEGIN 
        INSERT INTO Ubicaciones_movilizaciones(numeroguia_movi, area_ubi, registrodepredio_ubi)
        VALUES (numeroguia_movi, area_ubi, registrodepredio_ubi); 
        COMMIT; 
    END;

    PROCEDURE modificar_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) IS 
    BEGIN 
        UPDATE Ubicaciones_movilizaciones
        SET numeroguia_movi = numeroguia_movi, area_ubi = area_ubi, registrodepredio_ubi = registrodepredio_ubi
        WHERE numeroguia_movi = numeroguia_movi AND area_ubi = area_ubi AND registrodepredio_ubi = registrodepredio_ubi; 
        COMMIT; 
    END;

    FUNCTION consultar_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) RETURN SYS_REFCURSOR IS 
        consultar_ubicacion_movilizacionCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_ubicacion_movilizacionCursor FOR 
        SELECT * 
        FROM Ubicaciones_movilizaciones
        WHERE numeroguia_movi = numeroguia_movi AND area_ubi = area_ubi AND registrodepredio_ubi = registrodepredio_ubi; 
        RETURN consultar_ubicacion_movilizacionCursor; 
    END;

    PROCEDURE eliminar_ubicacion_movilizacion(numeroguia_movi VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) IS 
    BEGIN 
        DELETE 
        FROM Ubicaciones_movilizaciones
        WHERE numeroguia_movi = numeroguia_movi AND area_ubi = area_ubi AND registrodepredio_ubi = registrodepredio_ubi;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END;
END PC_MOVILIZACIONES;
/

--PC_CABEZADEGANADO
CREATE OR REPLACE PACKAGE BODY PC_CABEZADEGANADO AS
	PROCEDURE  add_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2)
        IS
        BEGIN
        INSERT INTO cabezadeganado(id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
            VALUES (id_, estado, nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_cabezadeganado;

    PROCEDURE modificar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2)
        IS BEGIN
        UPDATE CABEZADEGANADO SET estado = estado, nombre = nombre, fechanacimiento = fechanacimiento, madre = madre, padre = padre, sexo = sexo, color = color, confirmado = confirmado, pesaje = pesaje, raza = raza, inseminador = inseminador
        WHERE id_ = id_;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_cabezadeganado;

    FUNCTION consultar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_cabezadeganadoCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_cabezadeganadoCursor FOR
                SELECT *
                FROM CabezaDeGanado;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_cabezadeganadoCursor;
    END consultar_cabezadeganado;

    PROCEDURE eliminar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM CabezaDeGanado
        WHERE id_ = id_;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END eliminar_cabezadeganado;

    FUNCTION Co3CabezaDeGanado(id_ VARCHAR2) RETURN SYS_REFCURSOR IS
    Co3CabezaDeGanadoCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co3CabezaDeGanadoCursor FOR
            SELECT id_ FROM CabezaDeGanado;
        RETURN Co3CabezaDeGanadoCursor;
    END Co3CabezaDeGanado;

    PROCEDURE Co4JCabezaDeGanado(id_fincas VARCHAR2, id_ VARCHAR2) IS
        id_fincas_cabezadeganado VARCHAR2(30);
        id_cabezadeganado VARCHAR2(20);
    BEGIN
        SELECT id_fincas, id_
        INTO id_fincas_cabezadeganado, id_cabezadeganado
        FROM CabezaDeGanado;
    END Co4JCabezaDeGanado;

    PROCEDURE Co5JCabezaDeGanado(id_ VARCHAR2)IS
    id_cabezadeganado VARCHAR2(20);
    BEGIN
    SELECT id_ INTO id_cabezadeganado FROM CabezaDeGanado;
    END Co5JCabezaDeGanado;

    FUNCTION Co6CabezaDeGanado(id_ VARCHAR2) RETURN SYS_REFCURSOR IS
    Co6CabezaDeGanadoCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co6CabezaDeGanadoCursor FOR
            SELECT id_ FROM CabezaDeGanado;
        RETURN Co6CabezaDeGanadoCursor;
    END Co6CabezaDeGanado;

    PROCEDURE Co6JCabezaDeGanado(id_ VARCHAR2) IS
    id_CabezaDeGanadoJ VARCHAR2(20);
    BEGIN
    SELECT id_ INTO id_CabezaDeGanadoJ FROM CabezaDeGanado;
    END Co6JCabezaDeGanado;

    FUNCTION Co7CabezaDeGanado(id_ VARCHAR2) RETURN SYS_REFCURSOR IS
    Co7CabezaDeGanadoCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co7CabezaDeGanadoCursor FOR
            SELECT id_ FROM CabezaDeGanado;
        RETURN Co7CabezaDeGanadoCursor;
    END Co7CabezaDeGanado;

    PROCEDURE CoJ7CabezaDeGanado(id_fincas VARCHAR2, id_ VARCHAR2) IS
    id_fincas_cabezadeganadoJ VARCHAR2(30);
    id_cabezadeganadoJ VARCHAR2(20);
    BEGIN
    SELECT id_fincas, id_ INTO id_fincas_cabezadeganadoJ, id_cabezadeganadoJ FROM CabezaDeGanado;
    END CoJ7CabezaDeGanado;
    
    PROCEDURE  add_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        INSERT INTO destinos(registronacimiento, tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto , crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, id_CG)
            VALUES (registronacimiento, tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, numeroderegistroparto , crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, registropeso, id_CG);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_destinos;

    PROCEDURE modificar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2)
        IS BEGIN
        UPDATE Destinos SET tipo = tipo, fechaultimoparto = fechaultimoparto, fechaprimerparto = fechaprimerparto, fechaultimoservicio = fechaultimoservicio, toro = toro, numerodeservicios =numerodeservicios, numeroderegistroparto = numeroderegistroparto, crias = crias, razaespecial = razaespecial, revisado = revisado, litrosdelechemanana = litrosdelechemanana, litrosdelechetarde = litrosdelechetarde, secado = secado, edadprimerparto = edadprimerparto, pesokg = pesokg, engorde = engorde, ambiente = ambiente, bascula = bascula, registropeso = registropeso
        WHERE registronacimiento = registronacimiento;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_destinos;

    FUNCTION consultar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_destinosCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_destinosCursor FOR
                SELECT *
                FROM Destinos;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_destinosCursor;
    END consultar_destinos;

    PROCEDURE eliminar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM Destinos
        WHERE registronacimiento = registronacimiento ;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_destinos;

    FUNCTION Co3Destinos(pesokg INTEGER) RETURN SYS_REFCURSOR IS
    Co3DestinosCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co3DestinosCursor FOR
            SELECT pesokg FROM Destinos;
        RETURN Co3DestinosCursor;
    END Co3Destinos;

    PROCEDURE Co4JDestinos(id_CG VARCHAR2) IS
    id_CG_Co4JDestinos VARCHAR2(20);
    BEGIN
    SELECT id_CG INTO id_CG_Co4JDestinos FROM Destinos;
    END Co4JDestinos;

    FUNCTION Co5Destinos(tipo VARCHAR2) RETURN SYS_REFCURSOR IS
    Co5DestinosCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co5DestinosCursor FOR
            SELECT tipo FROM Destinos;
        RETURN Co5DestinosCursor;
    END Co5Destinos;

    PROCEDURE Co5JDestinos(id_CG VARCHAR) IS
    id_CG_Co5JDestinos VARCHAR2(20);
    BEGIN
    SELECT id_CG INTO id_CG_Co5JDestinos FROM Destinos;
    END Co5JDestinos;

    PROCEDURE  add_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2)
        IS
        BEGIN
        INSERT INTO alimentaciones(caracteristicas, pastaje, suplementos, vitaminas, liquido, salmineral, melaza, id_CG)
            VALUES (caracteristicas, pastaje, suplementos, vitaminas, liquido, salmineral, melaza, id_CG);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_alimentaciones;

    PROCEDURE modificar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2)
        IS BEGIN
        UPDATE Alimentaciones SET pastaje = pastaje, suplementos = suplementos, vitaminas = vitaminas, liquido = liquido, salmineral = salmineral, melaza = melaza, id_CG = id_CG
        WHERE caracteristicas = caracteristicas;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_alimentaciones;

    FUNCTION consultar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_alimentacionesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_alimentacionesCursor FOR
                SELECT *
                FROM alimentaciones;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_alimentacionesCursor;
    END consultar_alimentaciones;

    PROCEDURE eliminar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM Alimentaciones
        WHERE caracteristicas = caracteristicas ;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_alimentaciones;

    PROCEDURE  add_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2)
        IS
        BEGIN
        INSERT INTO otro_alimentaciones(otro, caracteristicas_ali)
            VALUES (otro, caracteristicas_ali);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_otros_alimentaciones;

    PROCEDURE modificar_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2)
        IS BEGIN
        UPDATE otro_alimentaciones SET otro = otro
        WHERE otro = otro;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_otros_alimentaciones;

    FUNCTION consultar_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_otros_alimentacionesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_otros_alimentacionesCursor FOR
                SELECT *
                FROM otro_alimentaciones;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_otros_alimentacionesCursor;
    END consultar_otros_alimentaciones;

    PROCEDURE eliminar_otros_alimentaciones(otro VARCHAR2, caracteristicas_ali VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM otro_alimentaciones
        WHERE otro = otro;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_otros_alimentaciones;
        
    FUNCTION consultar_cabezadeganado_alimentaciones(id_CG VARCHAR2, caracteristicas_ali VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_cabezadeganado_alimentacionesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_cabezadeganado_alimentacionesCursor FOR
                SELECT *
                FROM cabezadeganado_alimentaciones;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_cabezadeganado_alimentacionesCursor;
    END consultar_cabezadeganado_alimentaciones;

    PROCEDURE eliminar_cabezadeganado_alimentaciones(id_CG VARCHAR2, caracteristicas_ali VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM cabezadeganado_alimentaciones
        WHERE id_CG = id_CG AND caracteristicas_ali = caracteristicas_ali;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_cabezadeganado_alimentaciones;
        
    FUNCTION consultar_cabezadeganado_intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_cabezadeganado_intervencionesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_cabezadeganado_intervencionesCursor FOR
                SELECT *
                FROM cabezadeganado_intervenciones;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_cabezadeganado_intervencionesCursor;
    END consultar_cabezadeganado_intervenciones;

    PROCEDURE eliminar_cabezadeganado_intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM cabezadeganado_intervenciones
        WHERE id_CG = id_CG AND revision_inter = revision_inter;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_cabezadeganado_intervenciones;

    PROCEDURE Co5JCabezasDeGanado_Intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2) IS
    id_CG_Co5JCabezasDeGanado_Intervenciones VARCHAR2(20);
    revision_inter_Co5JCabezasDeGanado_Intervenciones VARCHAR2(20);
    BEGIN
    SELECT id_CG, revision_inter INTO id_CG_Co5JCabezasDeGanado_Intervenciones, revision_inter_Co5JCabezasDeGanado_Intervenciones FROM CabezaDeGanado_Intervenciones;
    END Co5JCabezasDeGanado_Intervenciones;

    PROCEDURE Co6JCabezasDeGanado_Intervenciones(id_CG VARCHAR2, revision_inter VARCHAR2) IS
    id_CG_Co6JCabezasDeGanado_Intervenciones VARCHAR2(20);
    revision_inter_Co6JCabezasDeGanado_Intervenciones VARCHAR2(20);
    BEGIN
    SELECT id_CG, revision_inter INTO id_CG_Co6JCabezasDeGanado_Intervenciones, revision_inter_Co6JCabezasDeGanado_Intervenciones FROM CabezaDeGanado_Intervenciones;
    END Co6JCabezasDeGanado_Intervenciones;

END PC_CABEZADEGANADO;
/

--PC_INTERVENCIONES
CREATE OR REPLACE PACKAGE BODY PC_INTERVENCIONES AS
       
    PROCEDURE  add_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        INSERT INTO intervenciones(revision, desparacitante, vacuna, inseminacion, fechadeintervencion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
            VALUES (revision, desparacitante, vacuna, inseminacion, fechadeintervencion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_intervenciones;

    PROCEDURE modificar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2)
        IS BEGIN
        UPDATE Intervenciones SET desparacitante = desparacitante, vacuna = vacuna, inseminacion = inseminacion, fechadeintervencion = fechadeintervencion, tipodeasistencia = tipodeasistencia, estadodesalud = estadodesalud, fechadeculminacion = fechadeculminacion, prioridad = prioridad, id_CG = id_CG
        WHERE revision = revision;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_intervenciones;

    FUNCTION consultar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_intervencionesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_intervencionesCursor FOR
                SELECT *
                FROM Intervenciones;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_intervencionesCursor;
    END consultar_Intervenciones;

    PROCEDURE eliminar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM Intervenciones
        WHERE revision = revision;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_intervenciones;

    FUNCTION Co4Intervenciones(vacuna NUMBER) RETURN SYS_REFCURSOR IS
    Co4IntervencionesCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co4IntervencionesCursor FOR
            SELECT vacuna FROM Intervenciones;
        RETURN Co4IntervencionesCursor;
    END Co4Intervenciones;

    PROCEDURE Co4JIntervenciones(id_CG VARCHAR) IS
    id_CG_Co4JIntervenciones VARCHAR2(20);
    BEGIN
    SELECT id_CG INTO id_CG_Co4JIntervenciones FROM Intervenciones;
    END Co4JIntervenciones;

    PROCEDURE Co5JIntervenciones(revision INTEGER) IS
    revision_Co5JIntervenciones INTEGER;
    BEGIN
    SELECT revision INTO revision_Co5JIntervenciones FROM Intervenciones;
    END Co5JIntervenciones;

    PROCEDURE Co6Intervenciones(fechadeintervencion DATE) IS
    fechadeintervencion_Co6Intervenciones DATE;
    BEGIN
    SELECT fechadeintervencion INTO fechadeintervencion_Co6Intervenciones FROM Intervenciones;
    END Co6Intervenciones;
    
    PROCEDURE  add_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2)
        IS
        BEGIN
        INSERT INTO tratamientos(numerodetratamiento, nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados)
            VALUES (numerodetratamiento, nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_tratamientos;

    PROCEDURE modificar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2)
        IS BEGIN
        UPDATE Tratamientos SET nombremedicamento = nombremedicamento, tiempodeduracion = tiempodeduracion, especificaciones = especificaciones, restricciones = restricciones, cuidados = cuidados
        WHERE numerodetratamiento = numerodetratamiento;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_tratamientos;

    FUNCTION consultar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_tratamientosCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_tratamientosCursor FOR
                SELECT *
                FROM Tratamientos;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_tratamientosCursor;
    END consultar_tratamientos;

    PROCEDURE eliminar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM Tratamientos
        WHERE numerodetratamiento = numerodetratamiento;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_tratamientos;
        
    PROCEDURE add_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2)
        IS
        BEGIN
        INSERT INTO vacunas(numerovacuna, nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
            VALUES (numerovacuna, nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_vacunas;

    PROCEDURE modificar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2)
        IS BEGIN
        UPDATE Vacunas SET nombre = nombre, dosis = dosis, especificaciones = especificaciones, tiempodeduracion = tiempodeduracion, cuidados = cuidados, aplicacion = aplicacion, ciclo = ciclo, generalidades = generalidades, fechadeinicio = fechadeinicio, fechaculminacion = fechaculminacion, tipo = tipo
        WHERE numerovacuna = numerovacuna;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_vacunas;

    FUNCTION consultar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_vacunasCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_vacunasCursor FOR
                SELECT *
                FROM vacunas;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_vacunasCursor;
    END consultar_vacunas;

    PROCEDURE eliminar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM Vacunas
        WHERE numerovacuna = numerovacuna;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_vacunas;
        
    PROCEDURE  add_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2)
        IS
        BEGIN
        INSERT INTO maternidades(numeromaternidad, fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento)
            VALUES (numeromaternidad, fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_maternidades;

    PROCEDURE modificar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2)
        IS BEGIN
        UPDATE maternidades SET  fertilidad = fertilidad, tasadedestete = tasadedestete, intervalodeparto = intervalodeparto, inseminacion = inseminacion, periododegestacion = periododegestacion, cuidado = cuidado, nacimiento = nacimiento, diagnostico = diagnostico, consideraciones = consideraciones, atenciondecria = atenciondecria, curacion = curacion, riesgo = riesgo, zonadecubrimiento = zonadecubrimiento 
        WHERE  numeromaternidad = numeromaternidad ;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END modificar_maternidades;

    FUNCTION consultar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_maternidadesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_maternidadesCursor FOR
                SELECT *
                FROM maternidades;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_maternidadesCursor;
    END consultar_maternidades;

    PROCEDURE eliminar_meternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM maternidades
        WHERE  numeromaternidad = numeromaternidad ;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_meternidades;

    PROCEDURE Co5JMaternidades(numeromaternidad VARCHAR2) IS
    numerodematernidades_Co5JMaternidades VARCHAR2(20);
    BEGIN
    SELECT numeromaternidad INTO numerodematernidades_Co5JMaternidades FROM Maternidades;
    END Co5JMaternidades;

    PROCEDURE Co6JMaternidades(numeromaternidad VARCHAR2) IS
    numerodematernidades_Co6JMaternidades VARCHAR2(20);
    BEGIN
    SELECT numeromaternidad INTO numerodematernidades_Co6JMaternidades FROM Maternidades;
    END Co6JMaternidades;
    
    FUNCTION consultar_intervenciones_tratamientos(revision_inter VARCHAR2, numerodetratamiento_trat INTEGER) RETURN SYS_REFCURSOR
        IS consultar_intervenciones_tratamientosCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_intervenciones_tratamientosCursor FOR
                SELECT *
                FROM intervenciones_tratamientos;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_intervenciones_tratamientosCursor;
    END consultar_intervenciones_tratamientos;

    PROCEDURE eliminar_intervenciones_tratamientos(revision_inter VARCHAR2, numerodetratamiento_trat INTEGER)
        IS
        BEGIN
        DELETE
        FROM Intervenciones_tratamientos
        WHERE revision_inter = revision_inter AND numerodetratamiento_trat = numerodetratamiento_trat;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_intervenciones_tratamientos;
        
    FUNCTION consultar_intervenciones_vacunas(revision_inter VARCHAR2, numerovacuna_vac VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_intervenciones_vacunasCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_intervenciones_vacunasCursor FOR
                SELECT *
                FROM intervenciones_vacunas;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_intervenciones_vacunasCursor;
    END consultar_intervenciones_vacunas;

    PROCEDURE eliminar_intervenciones_vacunas(revision_inter VARCHAR2, numerovacuna_vac VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM intervenciones_vacunas
        WHERE revision_inter = revision_inter AND numerovacuna_vac = numerovacuna_vac;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_intervenciones_vacunas;
        
    FUNCTION consultar_intervenciones_maternidades(revision_inter VARCHAR2, numerodematenidad_mat VARCHAR2) RETURN SYS_REFCURSOR
    IS 
        consultar_intervenciones_maternidadesCursor SYS_REFCURSOR;
    BEGIN
        OPEN consultar_intervenciones_maternidadesCursor FOR
            SELECT *
            FROM intervenciones_maternidades;
        RETURN consultar_intervenciones_maternidadesCursor;
    END consultar_intervenciones_maternidades;
    
    PROCEDURE eliminar_intervenciones_maternidades(revision_inter VARCHAR2, numerodematenidad_mat VARCHAR2)
    IS
    BEGIN
        DELETE
        FROM intervenciones_maternidades
        WHERE revision_inter = revision_inter AND numerodematenidad_mat = numerodematenidad_mat;
        COMMIT;
    END eliminar_intervenciones_maternidades;
    
    PROCEDURE Co5JIntervenciones_Maternidades(revision_inter VARCHAR2, numerodematernidad_mat VARCHAR2)
    IS
        revision_inter_numerodematernidades_mat_Co5JIntervenciones_Maternidades VARCHAR2(50);
    BEGIN
        SELECT revision_inter INTO revision_inter_numerodematernidades_mat_Co5JIntervenciones_Maternidades FROM Intervenciones_Maternidades;
    END Co5JIntervenciones_Maternidades;
    
    PROCEDURE Co6JIntervenciones_Maternidades(revision_inter VARCHAR2, numerodematernidad_mat VARCHAR2)
    IS
        revision_inter_numerodematernidades_mat_Co6JIntervenciones_Maternidades VARCHAR2(50);
    BEGIN
        SELECT revision_inter INTO revision_inter_numerodematernidades_mat_Co6JIntervenciones_Maternidades FROM Intervenciones_Maternidades;
    END Co6JIntervenciones_Maternidades;

END PC_INTERVENCIONES;
/

--PC_USUARIOS
CREATE OR REPLACE PACKAGE BODY PC_USUARIOS AS
    PROCEDURE add_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2)
    IS 
	BEGIN 
		INSERT INTO Usuarios(nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
		VALUES (nombre, Tipo_id, numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo);
        COMMIT;
            END add_usuarios;
    PROCEDURE mo_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2)
    IS
    BEGIN
       UPDATE Usuarios SET nombre=nombre;
	   COMMIT;
    
    END;
    FUNCTION co_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2) RETURN SYS_REFCURSOR
    IS
        co_usuarios SYS_REFCURSOR;
    BEGIN
        OPEN co_usuarios FOR
            SELECT * FROM Usuarios;
        RETURN co_usuarios;
    END co_usuarios;
    
    PROCEDURE el_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2)
	 IS
    BEGIN
        DELETE FROM Usuarios
        WHERE Tipo_id = Tipo_id OR numero_id = numero_id;
    END el_usuarios;
    

    FUNCTION Co1Usuarios(nombre VARCHAR2) RETURN SYS_REFCURSOR IS
    Co1UsuariosCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co1UsuariosCursor FOR
            SELECT nombre FROM Usuarios;
        RETURN Co1UsuariosCursor;
    END Co1Usuarios;
    
    FUNCTION Co2Usuarios(nombre VARCHAR2) RETURN SYS_REFCURSOR IS
    Co2UsuariosCursor SYS_REFCURSOR;
    BEGIN
        OPEN Co2UsuariosCursor FOR
            SELECT nombre FROM Usuarios;
        RETURN Co2Usuarioscursor;
    END Co2Usuarios;
    
    PROCEDURE add_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) IS
    BEGIN 
        INSERT INTO Proveedores(Tipo_idusu, numero_idusu, nombre, registrosanitario, tipo, especificaciones, servicio_id, producto_id)
        VALUES (Tipo_idusu, numero_idusu, nombre, registrosanitario, tipo, especificaciones, servicio_id, producto_id); 
        COMMIT; 
    END add_proveedor;

    PROCEDURE modificar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) IS
    BEGIN 
        UPDATE Proveedores
        SET especificaciones = especificaciones
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND nombre = nombre AND registrosanitario = registrosanitario; 
        COMMIT; 
    END modificar_proveedor;

    FUNCTION consultar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) RETURN SYS_REFCURSOR IS
        consultar_proveedorCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_proveedorCursor FOR 
        SELECT * 
        FROM Proveedores
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND nombre = nombre; 
        RETURN consultar_proveedorCursor; 
    END consultar_proveedor;

    PROCEDURE eliminar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) IS
    BEGIN 
        DELETE 
        FROM Proveedores
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND nombre = nombre; 
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END eliminar_proveedor;
    
    PROCEDURE add_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER) IS 
    BEGIN 
        INSERT INTO Servicios(servicio_id, tipodemecanismo, productos, tecnologia , comercializacion, proceso, clasificacion, criadeanimales)
        VALUES (servicio_id, tipodemecanismo, productos, tecnologia , comercializacion, proceso, clasificacion, criadeanimales); 
        COMMIT; 
    END add_servicio;

    PROCEDURE modificar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER)
    IS BEGIN 
        UPDATE Servicios
        SET tipodemecanismo = tipodemecanismo
        WHERE servicio_id = servicio_id; 
        COMMIT; 
    END modificar_servicio;

    FUNCTION consultar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER) RETURN SYS_REFCURSOR
    IS consultar_servicioCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_servicioCursor FOR 
        SELECT * 
        FROM Servicios
        WHERE servicio_id = servicio_id; 
        RETURN consultar_servicioCursor; 
    END consultar_servicio;

    PROCEDURE eliminar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER) IS 
    BEGIN 
        DELETE 
        FROM Servicios
        WHERE servicio_id = servicio_id; 
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END eliminar_servicio;
    
    PROCEDURE add_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) IS
    BEGIN 
        INSERT INTO Productos(productos_id, fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa)
        VALUES (productos_id, fechadecompra, tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa); 
        COMMIT; 
    END add_producto;

    PROCEDURE modificar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) IS
    BEGIN 
        UPDATE Productos
        SET fechadecompra = fechadecompra
        WHERE productos_id = productos_id; 
        COMMIT; 
    END modificar_producto;

    FUNCTION consultar_producto (productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) RETURN SYS_REFCURSOR IS
        consultar_productoCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_productoCursor FOR 
        SELECT * 
        FROM Productos
        WHERE productos_id = productos_id; 
        RETURN consultar_productoCursor; 
    END consultar_producto;

    PROCEDURE eliminar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) IS
    BEGIN 
        DELETE 
        FROM Productos
        WHERE productos_id = productos_id;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END eliminar_producto;


    PROCEDURE add_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2) IS
        BEGIN 
        INSERT INTO Trabajadores(Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca , numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso ) VALUES (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca , numerodecontrato, estadocivil, familiares, polizadeseguridad, numeropolizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso );
        COMMIT; 
    END add_trabajador;

    PROCEDURE modificar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2)
        IS BEGIN 
        UPDATE Trabajadores SET numeropolizadeseguridad = numeropolizadeseguridad, numerodecontrato = numerodecontrato, fechadeingresotrabajar = fechadeingresotrabajar
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        COMMIT; 
    END modificar_trabajador;

    FUNCTION consultar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_trabajadorCursor SYS_REFCURSOR; 
        BEGIN OPEN consultar_trabajadorCursor 
        FOR SELECT * 
        FROM Trabajadores
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        RETURN consultar_trabajadorCursor; 
    END consultar_trabajador;

    PROCEDURE eliminar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2)
        IS BEGIN DELETE 
        FROM Trabajadores
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
        END eliminar_trabajador;

    FUNCTION Co1Trabajadores(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, horastrabajadas INTEGER) RETURN SYS_REFCURSOR IS
     consultar_compradorCursor SYS_REFCURSOR; 
        BEGIN OPEN consultar_compradorCursor 
        FOR SELECT Tipo_idusu,numero_idusu,horastrabajadas 
        FROM Trabajadores
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        RETURN consultar_compradorCursor; 
    END Co1Trabajadores;
    
    PROCEDURE add_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2) IS
    BEGIN
        INSERT INTO Acuerdos_trabajadores VALUES(acuerdo, Tipo_idusu, numero_idusu);
        COMMIT; 
    END add_acuerdo;

    PROCEDURE modificar_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2) IS
    BEGIN 
        UPDATE Acuerdos_trabajadores
        SET acuerdo = acuerdo
        WHERE Tipo_idusu=Tipo_idusu AND numero_idusu =numero_idusu;
        
        COMMIT; 
    END modificar_acuerdo;

    FUNCTION consultar_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2) RETURN SYS_REFCURSOR
    IS
        consultar_acuerdoCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_acuerdoCursor FOR 
        SELECT *
        FROM Acuerdos_trabajadores
        WHERE Tipo_idusu=Tipo_idusu AND numero_idusu =numero_idusu;
        RETURN consultar_acuerdoCursor; 
    END consultar_acuerdo;

    PROCEDURE eliminar_acuerdo(acuerdo VARCHAR2, Tipo_idusu VARCHAR2, numero_idusu VARCHAR2) IS
    BEGIN 
        DELETE 
        FROM Acuerdos_trabajadores
        WHERE Tipo_idusu=Tipo_idusu AND numero_idusu =numero_idusu;
        
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END eliminar_acuerdo;


    PROCEDURE add_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2)
  	IS 
	BEGIN 
		INSERT INTO Direccion_usu_ubi(direccion, Tipoid_usu, numeroid_usu, area_ubi, registrodepredio_ubi)
		VALUES (direccion, Tipoid_usu, numeroid_usu, area_ubi, registrodepredio_ubi);
        COMMIT;
	END add_direccion_usu_ubi;
    PROCEDURE modificar_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2)
    IS
    BEGIN
        UPDATE Direccion_usu_ubi SET direccion = Null;
	    COMMIT;
        EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-22015, 'Error al modificar direccion_usu_ubi.');
    END;

    FUNCTION consultar_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2) RETURN SYS_REFCURSOR
    IS
        consultar_direccion_usu_ubi SYS_REFCURSOR;
    BEGIN
        OPEN consultar_direccion_usu_ubi FOR
            SELECT * FROM Direccion_usu_ubi;
        RETURN consultar_direccion_usu_ubi;
    END consultar_direccion_usu_ubi;
    
    PROCEDURE eliminar_direccion_usu_ubi(direccion VARCHAR2, Tipoid_usu VARCHAR2, numeroid_usu VARCHAR2, area_ubi VARCHAR2, registrodepredio_ubi VARCHAR2)
    IS
    BEGIN
        DELETE FROM Direccion_usu_ubi
        WHERE Tipoid_usu = Tipoid_usu OR numeroid_usu = numeroid_usu;
    END eliminar_direccion_usu_ubi;
    
    PROCEDURE add_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) 
        IS BEGIN 
        INSERT INTO Compradores(Tipo_idusu, numero_idusu, fechacompra, especificaciones, razasdecompra, tipos, mododepago) VALUES (Tipo_idusu, numero_idusu, fechacompra, especificaciones, razasdecompra, tipos, mododepago); 
        COMMIT; 
    END add_comprador;

    PROCEDURE modificar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) 
        IS BEGIN 
        UPDATE Compradores SET fechacompra = fechacompra, especificaciones = especificaciones, razasdecompra = razasdecompra, tipos = tipos, mododepago = mododepago 
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        COMMIT; 
    END modificar_comprador;

    FUNCTION consultar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) RETURN SYS_REFCURSOR 
        IS consultar_compradorCursor SYS_REFCURSOR; 
        BEGIN OPEN consultar_compradorCursor 
        FOR SELECT * 
        FROM Compradores 
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        RETURN consultar_compradorCursor; 
    END consultar_comprador;

    PROCEDURE eliminar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) 
        IS BEGIN DELETE 
        FROM Compradores 
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu; 
        END eliminar_comprador;
        
    PROCEDURE add_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2)IS
	BEGIN 
        INSERT INTO trabajadores_movilizaciones(Tipo_idusu, numero_idusu, numeroguia_movi)
        VALUES (Tipo_idusu, numero_idusu, numeroguia_movi); 
        COMMIT; 
    END add_trabajador_movilizacion;

    PROCEDURE modificar_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2) IS
	BEGIN 
        UPDATE trabajadores_movilizaciones
        SET Tipo_idusu = Tipo_idusu, numero_idusu = numero_idusu , numeroguia_movi = numeroguia_movi
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND numeroguia_movi = numeroguia_movi; 
        COMMIT; 
    END modificar_trabajador_movilizacion;

    FUNCTION consultar_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2) RETURN SYS_REFCURSOR IS
	    consultar_ubicacion_movilizacionCursor SYS_REFCURSOR; 
    BEGIN 
        OPEN consultar_ubicacion_movilizacionCursor FOR 
        SELECT * 
        FROM trabajadores_movilizaciones
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND numeroguia_movi = numeroguia_movi; 
        RETURN consultar_ubicacion_movilizacionCursor; 
    END;

    PROCEDURE eliminar_trabajador_movilizacion(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, numeroguia_movi VARCHAR2) IS
        BEGIN 
        DELETE 
        FROM trabajadores_movilizaciones
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND numeroguia_movi = numeroguia_movi;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
    END;
    
    FUNCTION consultar_trabajadores_cabezadeganado(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_trabajadores_cabezadeganadoCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_trabajadores_cabezadeganadoCursor FOR
                SELECT *
                FROM trabajadores_cabezasdeganado;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_trabajadores_cabezadeganadoCursor;
    END consultar_trabajadores_cabezadeganado;

    PROCEDURE eliminar_trabajadores_cabezadeganado(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM trabajadores_cabezasdeganado
        WHERE tipo_idusu = tipo_idusu AND numero_idusu = numero_idusu;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_trabajadores_cabezadeganado;
        
    FUNCTION consultar_trabajdores_intervenciones(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, revision_inter VARCHAR2) RETURN SYS_REFCURSOR
        IS consultar_trabajdores_intervencionesCursor SYS_REFCURSOR;
        BEGIN
            OPEN consultar_trabajdores_intervencionesCursor FOR
                SELECT *
                FROM trabajador_intervenciones;
                --este where hace que la consulta solo se haga cuando se sepan las pk
                --que pasa si no las tengo (creo que debemos quitar los where de las consultas)
                --WHERE pk = pk AND pk = pk;
            RETURN consultar_trabajdores_intervencionesCursor;
    END consultar_trabajdores_intervenciones;

    PROCEDURE eliminar_trabajdores_intervenciones(tipo_idusu VARCHAR2, numero_idusu VARCHAR2, revision_inter VARCHAR2)
        IS
        BEGIN
        DELETE
        FROM trabajador_intervenciones
        WHERE tipo_idusu = tipo_idusu AND numero_idusu = numero_idusu;
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
        END eliminar_trabajdores_intervenciones;
        
END PC_USUARIOS;
/


--XCRUD
DROP PACKAGE PC_FINCAS;
DROP PACKAGE PC_UBICACIONES;
DROP PACKAGE PC_MOVILIZACIONES;
DROP PACKAGE PC_CABEZADEGANADO;
DROP PACKAGE PC_INTERVENCIONES;
DROP PACKAGE PC_USUARIOS;


--Poblar OK
--PC_FINCAS
BEGIN 
    PC_FINCAS.add_Fincas('1','Pradera', 'Finca principal');
END;
/
BEGIN 
    PC_FINCAS.add_Fincas('7','San Jose', 'Finca principal');
END;
/

BEGIN 
    PC_FINCAS.add_Fincas('2','Primavera', 'Finca principal');
END;
/
BEGIN 
    PC_FINCAS.mo_Fincas('4','Pradera', 'Finca principal');
END;
/

SELECT PC_FINCAS.co_Fincas('4','Pensilvania', 'Finca secundaria') FROM Fincas;


SELECT PC_FINCAS.Co4JFincas('1') FROM Fincas;

SELECT PC_FINCAS.Co7JFincas('4') FROM Fincas;

BEGIN
    PC_USUARIOS.mo_usuarios('John Doe', '1', '123456789', 0, 'Updated specifications', SYSDATE, 'F001', 'john@example.com');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.co_usuarios('John Doe', 'DNI', '12345678', 1, 'Especificaciones de prueba', SYSDATE, '1', 'john.doe@example.com');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.Co1Usuarios('John Doe');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.Co2Usuarios('John Doe');

END;
/
BEGIN
    PC_USUARIOS.add_servicio('1', 'Tipo', 'Productos', 'Tecno', 'Co1', 'Proceso', 'Cla1', 1);
END;
/
BEGIN
    PC_USUARIOS.modificar_servicio('1', 'Tipo', 'Pro1', 'Tecno', 'Co1', 'Proceso', 'Cla1', 1);
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_servicio('1', 'Tipo', 'Pro1', 'Tecno', 'Co1', 'Proceso', 'Cla1', 1);
END;
/
BEGIN
    PC_USUARIOS.add_producto('1', SYSDATE, 'Tip1', 'Co ADN', 'Vistt', 'Panop', 100, 50, 'Casa de venta');
END;
/
BEGIN
    PC_USUARIOS.modificar_producto('1', SYSDATE, 'Tip1', 'Co1ADN', 'Vistt', 'Panop', 100, 50, 'Casa de venta');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_producto('1', SYSDATE, 'Tipo de venta', 'Convención de ADN', 'Vista técnica', 'Panorama de producción', 100, 50, 'Casa de venta');
END;
/

BEGIN
    PC_USUARIOS.modificar_proveedor('DNI', '12345678', 'Proveedor 1', '1234', 'Tipo 2', 'Especificaciones actualizadas', '2', '2');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_proveedor('DNI', '12345678', 'Proveedor 1', '1234', 'Tipo 1', 'Especificaciones proveedor', '1', '1');
END;
/
BEGIN
    PC_USUARIOS.eliminar_proveedor('DNI', '12345678', 'Proveedor 1', '1234', 'Tipo 1', 'Especificaciones proveedor', '1', '1');
END;
/
BEGIN
    PC_USUARIOS.modificar_trabajador('DNI', '12345678', SYSDATE, 'Cargo', 'Encargado de finca', '1234', 'Estado civil', 'Familiares', 1, 'Numero poliza', 'Tipo contrato', 40, 1000, 'Tiempo de descanso');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_trabajador('DNI', '12345678', SYSDATE, 'Cargo', 'Encargado de finca', '1234', 'Estado civil', 'Familiares', 1, 'Numero poliza', 'Tipo contrato', 40, 1000, 'Tiempo de descanso');
END;
/
BEGIN
    PC_USUARIOS.eliminar_trabajador('DNI', '12345678', SYSDATE, 'Cargo', 'Encargado de finca', '1234', 'Estado civil', 'Familiares', 1, 'Numero poliza', 'Tipo contrato', 40, 1000, 'Tiempo de descanso');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.Co1Trabajadores('DNI', '12345678', 40);
END;
/

BEGIN
    PC_USUARIOS.modificar_acuerdo('Acuerdo', 'DNI', '12345678');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_acuerdo('Acuerdo', 'DNI', '12345678');
END;
/
BEGIN
    PC_USUARIOS.eliminar_acuerdo('Acuerdo', 'DNI', '12345678');
END;
/

DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_direccion_usu_ubi('Dirección', 'TipoID', 'NumeroID', 'Área', 'Registro de Predio');
END;
/
BEGIN
    PC_USUARIOS.eliminar_direccion_usu_ubi('Dirección', 'TipoID', 'NumeroID', 'Área', 'Registro de Predio');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_comprador('TipoID', 'NumeroID', SYSDATE, 'Especificaciones', 'Razas de compra', 'Tipos', 'Modo de pago');
END;
/
BEGIN
    PC_USUARIOS.eliminar_comprador('TipoID', 'NumeroID', SYSDATE, 'Especificaciones', 'Razas de compra', 'Tipos', 'Modo de pago');
END;
/
BEGIN
    PC_USUARIOS.modificar_trabajador_movilizacion('TipoID', 'NumeroID', 'Número Guía');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_trabajador_movilizacion('TipoID', 'NumeroID', 'Número Guía');
END;
/
BEGIN
    PC_USUARIOS.eliminar_trabajador_movilizacion('TipoID', 'NumeroID', 'Número Guía');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_trabajadores_cabezadeganado('TipoID', 'NumeroID', 'ID de Cabeza de Ganado');
END;
/
BEGIN
    PC_USUARIOS.eliminar_trabajadores_cabezadeganado('TipoID', 'NumeroID', 'ID de Cabeza de Ganado');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_USUARIOS.consultar_trabajdores_intervenciones('TipoID', 'NumeroID', 'Revisión de Intervención');
END;
/
BEGIN
    PC_USUARIOS.eliminar_trabajdores_intervenciones('TipoID', 'NumeroID', 'Revisión de Intervención');
END;
/
BEGIN
    PC_UBICACIONES.modificar_ubicacion('Área', 'Registro de Predio', 'Higiene', 'Tipo', 'Clasificación', 'ID de Fincas');
END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_UBICACIONES.consultar_ubicacion('Área', 'Registro de Predio', 'Higiene', 'Tipo', 'Clasificación', 'ID de Fincas');

END;
/
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_UBICACIONES.Co4Ubicaciones('Área');

END;
/

DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_UBICACIONES.Co7Ubicaciones('Área');
END;
/

BEGIN
    PC_UBICACIONES.modificar_prados('Área', 'Registro de Predio', 'Sostenibilidad', 'Tipo de Pastaje', 'Clima', 100);
END;
/
BEGIN
    -- Eliminar prados
    PC_UBICACIONES.eliminar_prados('Área', 'Registro de Predio', 'Sostenibilidad', 'Tipo de Pastaje', 'Clima', 100);
END;
/
BEGIN
    -- Modificar granjas
    PC_UBICACIONES.modificar_granjas('Área', 'Registro de Predio', 1, 'Calidad', 2);
END;
/

BEGIN
    -- Eliminar granjas
    PC_UBICACIONES.eliminar_granjas('Área', 'Registro de Predio', 1, 'Calidad', 2);

END;
/
BEGIN
    -- Agregar una movilización
    PC_MOVILIZACIONES.add_movilizacion('123', 'Guía', 'Predio', 'Registro', 'Origen', 'Destino', 'Nombre Trabajador', 'Fin', 'Especificaciones', SYSDATE, SYSDATE);
END;
/

BEGIN
    -- Modificar una movilización
    PC_MOVILIZACIONES.modificar_movilizacion('123', 'Nueva Guía de Movilización', 'Nuevo Predio', 'Nuevo Registro', 'Nuevo Origen', 'Nuevo Destino', 'Nuevo Nombre Trabajador', 'Nuevo Fin de Actividad', 'Nuevas Especificaciones', SYSDATE, SYSDATE);
END;
/

BEGIN
    -- Consultar movilizaciones
    DECLARE
        cur SYS_REFCURSOR;
    BEGIN
        cur := PC_MOVILIZACIONES.consultar_movilizacion('123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
        -- Realizar acciones con el cursor resultante
    END;
END;
/

BEGIN
    -- Eliminar una movilización
    PC_MOVILIZACIONES.eliminar_movilizacion('123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/
BEGIN
    -- Modificar el total de una movilización
    PC_MOVILIZACIONES.modificar_movilizacion_total('Nuevo Total', '123');
END;
/

BEGIN
    -- Consultar el total de una movilización
    DECLARE
        cur SYS_REFCURSOR;
    BEGIN
        cur := PC_MOVILIZACIONES.consultar_movilizacion_total(NULL, '123');
        -- Realizar acciones con el cursor resultante
    END;
END;
/

BEGIN
    -- Eliminar el total de una movilización
    PC_MOVILIZACIONES.eliminar_movilizacion_total(NULL, '123');
END;
/

BEGIN
    -- Modificar una ubicación de una movilización
    PC_MOVILIZACIONES.modificar_ubicacion_movilizacion('123', 'Nueva Área', 'Nuevo Registro de Predio');
END;
/

BEGIN
    -- Consultar ubicaciones de una movilización
    DECLARE
        cur SYS_REFCURSOR;
    BEGIN
        cur := PC_MOVILIZACIONES.consultar_ubicacion_movilizacion('123', NULL, NULL);
        -- Realizar acciones con el cursor resultante
    END;
END;
/

BEGIN
    -- Eliminar una ubicación de una movilización
    PC_MOVILIZACIONES.eliminar_ubicacion_movilizacion('123', NULL, NULL);
END;
/
BEGIN
  PC_CABEZADEGANADO.add_cabezadeganado('ID_001', 'Activo', 'Cabeza de Ganado 1', SYSDATE, 'Madre1', 'Padre1', 'Macho', 'Negro', 1, 500, 'Raza1', 123, 'Area1', 'RegistroPredio1', 'Area2', 'RegistroPredio2', 'Finca1');
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Registro de cabeza de ganado agregado con éxito.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error al agregar el registro de cabeza de ganado: ' || SQLERRM);
END;
/

-- Ejemplo de llamada al procedimiento modificar_cabezadeganado
BEGIN
  PC_CABEZADEGANADO.modificar_cabezadeganado('ID_001', 'Inactivo', 'Cabeza de Ganado 1 - Modificado', SYSDATE, 'Madre2', 'Padre2', 'Hembra', 'Blanco', 0, 600, 'Raza2', 456, 'Area1', 'RegistroPredio1', 'Area2', 'RegistroPredio2', 'Finca1');
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Registro de cabeza de ganado modificado con éxito.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error al modificar el registro de cabeza de ganado: ' || SQLERRM);
END;
/

-- Prueba de PC_CABEZADEGANADO.Co3CabezaDeGanado
DECLARE
  cur SYS_REFCURSOR;
BEGIN
  cur := PC_CABEZADEGANADO.Co3CabezaDeGanado('ID Cabeza de Ganado');
  -- Realizar acciones con el cursor resultante
END;
/

-- Prueba para el procedimiento modificar_destinos
BEGIN
  PC_CABEZADEGANADO.modificar_destinos('RegistroNacimiento1', 'Tipo1', SYSDATE, SYSDATE, SYSDATE, 'Toro1', 5, 10, 3, 'RazaEspecial1', 1, 'Revisado', 2, 3, 1, 4, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'RegistroPeso1', 'ID_CG1');
END;
/

-- Prueba para la función consultar_destinos
DECLARE
  cur SYS_REFCURSOR;
BEGIN
  cur := PC_CABEZADEGANADO.consultar_destinos('RegistroNacimiento1', 'Tipo1', SYSDATE, SYSDATE, SYSDATE, 'Toro1', 5, 10, 3, 'RazaEspecial1', 1, 'Revisado', 2, 3, 1, 4, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'RegistroPeso1', 'ID_CG1');
  -- Realizar acciones con el cursor resultante
END;
/

-- Prueba para el procedimiento eliminar_destinos
BEGIN
  PC_CABEZADEGANADO.eliminar_destinos('RegistroNacimiento1', 'Tipo1', SYSDATE, SYSDATE, SYSDATE, 'Toro1', 5, 10, 3, 'RazaEspecial1', 1, 'Revisado', 2, 3, 1, 4, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'RegistroPeso1', 'ID_CG1');
END;
/

-- Prueba para la función Co3Destinos
DECLARE
  cur SYS_REFCURSOR;
BEGIN
  cur := PC_CABEZADEGANADO.Co3Destinos(500);
  -- Realizar acciones con el cursor resultante
END;
/

  -- Prueba de modificar_alimentaciones
BEGIN
    PC_CABEZADEGANADO.modificar_alimentaciones('Características 1', 1, 2, 3, 4, 5, 6, 'ID_CG_001');
END;
/
  -- Prueba de consultar_alimentaciones
BEGIN
    DECLARE
      cur SYS_REFCURSOR;
    BEGIN
      cur := PC_CABEZADEGANADO.consultar_alimentaciones('Características 1', 1, 2, 3, 4, 5, 6, 'ID_CG_001');
      -- Realizar acciones con el cursor resultante
    END;
END;
/

-- Prueba de modificar_otros_alimentaciones
BEGIN
  PC_CABEZADEGANADO.modificar_otros_alimentaciones('Otro 1', 'Características Ali 1');
END;
/

-- Prueba de consultar_otros_alimentaciones
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_CABEZADEGANADO.consultar_otros_alimentaciones('Otro 1', 'Características Ali 1');
    -- Realizar acciones con el cursor resultante
  END;
END;
/

-- Prueba de eliminar_otros_alimentaciones
BEGIN
  PC_CABEZADEGANADO.eliminar_otros_alimentaciones('Otro 1', 'Características Ali 1');
END;
/

-- Prueba de consultar_cabezadeganado_alimentaciones
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_CABEZADEGANADO.consultar_cabezadeganado_alimentaciones('ID_CG', 'Características Ali');
    -- Realizar acciones con el cursor resultante
  END;
END;
/

-- Prueba de eliminar_cabezadeganado_alimentaciones
BEGIN
  PC_CABEZADEGANADO.eliminar_cabezadeganado_alimentaciones('ID_CG', 'Características Ali');
END;
/

-- Prueba de consultar_cabezadeganado_intervenciones
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_CABEZADEGANADO.consultar_cabezadeganado_intervenciones('ID_CG', 'Revision Inter');
    -- Realizar acciones con el cursor resultante
  END;
END;
/
-- Prueba de eliminar_cabezadeganado_intervenciones
BEGIN
  PC_CABEZADEGANADO.eliminar_cabezadeganado_intervenciones('ID_CG', 'Revision Inter');
END;
/

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Prueba de modificar_intervenciones
BEGIN
    PC_INTERVENCIONES.modificar_intervenciones('Revisión 1', 'Desparacitante 1', 1, 2, SYSDATE, 'Asistencia 1', 'Salud 1', SYSDATE, 'Prioridad 1', 'ID_CG_001');
END;
/ 
-- Prueba de consultar_intervenciones
BEGIN
DECLARE
    cur SYS_REFCURSOR;
BEGIN
    cur := PC_INTERVENCIONES.consultar_intervenciones('Revisión 1', 'Desparacitante 1', 1, 2, SYSDATE, 'Asistencia 1', 'Salud 1', SYSDATE, 'Prioridad 1', 'ID_CG_001');
    END;
END;
/
-- Prueba de eliminar_intervenciones
BEGIN
   PC_INTERVENCIONES.eliminar_intervenciones('Revisión 1', 'Desparacitante 1', 1, 2, SYSDATE, 'Asistencia 1', 'Salud 1', SYSDATE, 'Prioridad 1', 'ID_CG_001');
END;
/ 
-- Prueba de add_tratamientos
BEGIN
    PC_INTERVENCIONES.add_tratamientos(1, 'Medicamento 1', 5, 'Especificaciones 1', 'Restricciones 1', 'Cuidados 1');
END;
/
-- Prueba de add_vacunas
BEGIN
    PC_INTERVENCIONES.add_vacunas('Número 1', 'Nombre 1', 2, 'Especificaciones 1', 3, 'Cuidados 1', 'A1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Enfermedades virales');
END;
/
-- Prueba de modificar_vacunas
BEGIN
    PC_INTERVENCIONES.modificar_vacunas('Número 1', 'Nombre 1', 2, 'Especificaciones 1', 3, 'Cuidados 1', 'Aplicación 1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Tipo 1');
END;
/
-- Prueba de consultar_vacunas
BEGIN
    DECLARE
      cur SYS_REFCURSOR;
    BEGIN
      cur := PC_INTERVENCIONES.consultar_vacunas('Número 1', 'Nombre 1', 2, 'Especificaciones 1', 3, 'Cuidados 1', 'Aplicación 1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Tipo 1');
      -- Realizar acciones con el cursor resultante
    END;
END;
/
-- Prueba de eliminar_vacunas
BEGIN
    PC_INTERVENCIONES.eliminar_vacunas('Número 1', 'Nombre 1', 2, 'Especificaciones 1', 3, 'Cuidados 1', 'Aplicación 1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Tipo 1');
END;
/
-- Prueba de add_maternidades
BEGIN
    PC_INTERVENCIONES.add_maternidades('Número 1', 'F1', 60, 'I1', 6, 7, 'Cuidado 1', 8, 'D1', 'Cons1', 9, 'Cur1', 'Riesgo 1', 'Zona1');
END;
/
-- Prueba de modificar_maternidades
BEGIN
    PC_INTERVENCIONES.modificar_maternidades('Número 1', 'Fertilidad 1', 66, 'Intervalo Parto 1', 6, 7, 'Cuidado 1', 8, 'Diagnóstico 1', 'Consideraciones 1', 9, 'Curación 1', 'Riesgo 1', 'Zona Cubrimiento 1');
END;
/
-- Prueba de consultar_maternidades
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_INTERVENCIONES.consultar_maternidades('Número 1', 'Fertilidad 1', 5, 'Intervalo Parto 1', 6, 7, 'Cuidado 1', 8, 'Diagnóstico 1', 'Consideraciones 1', 9, 'Curación 1', 'Riesgo 1', 'Zona Cubrimiento 1');
    -- Realizar acciones con el cursor resultante
  END;
END;
/

-- Prueba de eliminar_meternidades
BEGIN
  PC_INTERVENCIONES.eliminar_meternidades('Número 1', 'Fertilidad 1', 5, 'Intervalo Parto 1', 6, 7, 'Cuidado 1', 8, 'Diagnóstico 1', 'Consideraciones 1', 9, 'Curación 1', 'Riesgo 1', 'Zona Cubrimiento 1');
END;
/


-- Prueba de consultar_intervenciones_tratamientos
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_INTERVENCIONES.consultar_intervenciones_tratamientos('Revision Inter', 123);
    -- Realizar acciones con el cursor resultante
  END;
END;
/

-- Prueba de eliminar_intervenciones_tratamientos
BEGIN
  PC_INTERVENCIONES.eliminar_intervenciones_tratamientos('Revision Inter', 123);
END;
/

-- Prueba de consultar_intervenciones_vacunas
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_INTERVENCIONES.consultar_intervenciones_vacunas('Revision Inter', 'Numero Vacuna');
    -- Realizar acciones con el cursor resultante
  END;
END;
/

-- Prueba de eliminar_intervenciones_vacunas
BEGIN
  PC_INTERVENCIONES.eliminar_intervenciones_vacunas('Revision Inter', 'Numero Vacuna');
END;
/

-- Prueba de consultar_intervenciones_maternidades
BEGIN
  DECLARE
    cur SYS_REFCURSOR;
  BEGIN
    cur := PC_INTERVENCIONES.consultar_intervenciones_maternidades('Revision Inter', 'Numero Maternidad');
    -- Realizar acciones con el cursor resultante
  END;
END;
/

-- Prueba de eliminar_intervenciones_maternidades
BEGIN
  PC_INTERVENCIONES.eliminar_intervenciones_maternidades('Revision Inter', 'Numero Maternidad');
END;
/


----Poblar NOOK
----PC_FINCAS
--BEGIN 
--    PC_FINCAS.add_Fincas('Pradera', 'Finca principal');
--END;
--/
--BEGIN 
--    PC_FINCAS.add_Fincas('7', 'Finca principal');
--END;
--/
--
--BEGIN 
--    PC_FINCAS.mo_Fincas('4', 'Finca principal');
--END;
--/
--
--SELECT PC_FINCAS.co_Fincas('4','Pensilvania', True) FROM Fincas;
--
--
--SELECT PC_FINCAS.Co4JFincas('1') FROM Ubicaciones;
--
--SELECT PC_FINCAS.Co7JFincas('4') FROM Finca;
--
--BEGIN
--    PC_USUARIOS.mo_usuarios('John Doe', '123456789', 0, 'Updated specifications', SYSDATE, 'F001', 'john@example.com');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.co_usuarios( 1, 'Especificaciones de prueba', SYSDATE, '1', 'john.doe@example.com');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.Co1Usuarios(True);
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIO.Co2Usuarios(False);
--
--END;
--/
--BEGIN
--    PC_USUARIOS.add_servicio('1', 'Tipo', 'Productos', 'Tecno', 'Co1', 'Proceso', True, 1);
--END;
--/
--BEGIN
--    PC_USUARIOS.modificar_servicio(null, 'Tecno', 'Co1', 'Proceso', 'Cla1', 1);
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_servicio(null, 'Pro1', 'Tecno', 'Co1', 'Proceso', 'Cla1', 1);
--END;
--/
--BEGIN
--    PC_USUARIOS.add_producto('1', SYSDATE, 'Tip1', 'Co ADN', 'Vistt', null, 100, 50, 'Casa de venta');
--END;
--/
--BEGIN
--    PC_USUARIOS.modificar_producto('1', 1, 'Tip1',null, 'Vistt', 'Panop', 100, 50, 'Casa de venta');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_producto('1', null, 'Convención de ADN', 'Vista técnica', 'Panorama de producción', 100, 50, 'Casa de venta');
--END;
--/
--
--BEGIN
--    PC_USUARIOS.modificar_proveedor('DNI', '12345678', True, 'Tipo 2', 'Especificaciones actualizadas', '2', '2');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_proveedor('DNI', False, '1234', 'Tipo 1', 'Especificaciones proveedor', '1', '1');
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_proveedor('DNI', '12345678', 'Proveedor 1', '1234', 'Tipo 1', 'Especificaciones proveedor','23/08/2022');
--END;
--/
--BEGIN
--    PC_USUARIOS.modificar_trabajador('DNI', '12345678', 'Encargado de finca', '1234', 'Estado civil', 'Familiares', 1, 'Numero poliza', 'Tipo contrato', 40, 1000, 'Tiempo de descanso');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_trabajador('DNI', 'Cargo', 'Encargado de finca', '1234', 'Estado civil', 'Familiares', 1, 'Numero poliza', 'Tipo contrato', 40, 1000, 'Tiempo de descanso');
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_trabaja('DNI', '12345678', SYSDATE, 'Cargo', 'Encargado de finca', '1234', 'Estado civil', 'Familiares', 1, 'Numero poliza', 'Tipo contrato', 40, 1000, 'Tiempo de descanso');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.Co('DNI', '12345678', 40);
--END;
--/
--
--BEGIN
--    PC_USUARIOS.modificar_acuerdo(True, '12345678');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_acuerdo('Acuerdo','12345678');
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_acuerdo(true);
--END;
--/
--
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_direccion_usu_ubi('Dirección', 'Área', 'Registro de Predio');
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_direccion_usu_ubi('Dirección', 'TipoID', 'Registro de Predio');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_comprador( 'Razas de compra', 'Tipos', 'Modo de pago');
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_comprador(true, SYSDATE, 'Especificaciones', 'Razas de compra', 'Tipos', 'Modo de pago');
--END;
--/
--BEGIN
--    PC_USUARIOS.modificar_trabajador_('TipoID', 'NumeroID', 'Número Guía');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_trabajador_movilizacion(null);
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_trabajador_movilizacion('TipoID');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_('TipoID', 'NumeroID', 'ID de Cabeza de Ganado');
--END;
--/
--BEGIN
--    PC_USUARIOS.eliminar_trabajadores_cabezadeganado(null);
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_USUARIOS.consultar_trabajdores_intervenciones(true);
--END;
--/
--BEGIN
--    PC_USUARIOS.elimi('TipoID', 'NumeroID', 'Revisión de Intervención');
--END;
--/
--BEGIN
--    PC_UBICACIONES.modificar_ubicacion('Registro de Predio', 'Higiene', 'Tipo', 'Clasificación', 'ID de Fincas');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_UBICACIONES.ubicacion('Área', 'Registro de Predio', 'Higiene', 'Tipo', 'Clasificación', 'ID de Fincas');
--
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_UBICACIONES.Co4Ubicaciones(True);
--
--END;
--/
--BEGIN
--    PC_UBICACIONES.Ubicaciones('ID de Fincas');
--END;
--/
--BEGIN
--    PC_UBICACIONES.Co4JUbicacion('ID de Fincas');
--END;
--/
--DECLARE
--    result SYS_REFCURSOR;
--BEGIN
--    result := PC_UBICACION.Co7Ubicaciones('Área');
--END;
--/
--BEGIN
--    PC_UBICACIONES.Co7JUbicaciones(false);
--END;
--/
--BEGIN
--    PC_UBICACIONES.modificar_prados('Área', 'Tipo de Pastaje', 'Clima', 100);
--END;
--/
--BEGIN
--    -- Eliminar prados
--    PC_UBICACIONES.eliminar_prados('Área', 'Registro de Predio', 'Tipo de Pastaje', 'Clima', 100);
--END;
--/
--BEGIN
--    -- Modificar granjas
--    PC_UBICACIONES.modificar_('Área', 'Registro de Predio', 1, 'Calidad', 2);
--END;
--/
--
--BEGIN
--    -- Eliminar granjas
--    PC_UBICACIONES.eliminar_granjas('Área', 'Registro de Predio', 2);
--
--END;
--/
--BEGIN
--    -- Agregar una movilización
--    PC_MOVILIZACIONES.add_movilizacion( 'Nombre Trabajador', 'Fin', 'Especificaciones', SYSDATE, SYSDATE);
--END;
--/
--
--BEGIN
--    -- Modificar una movilización
--    PC_MOVILIZACIONES.modificar_movilizacion(true, 'Nueva Guía de Movilización', 'Nuevo Predio', 'Nuevo Registro', 'Nuevo Origen', 'Nuevo Destino', 'Nuevo Nombre Trabajador', 'Nuevo Fin de Actividad', 'Nuevas Especificaciones', SYSDATE, SYSDATE);
--END;
--/
--
--BEGIN
--    -- Consultar movilizaciones
--    DECLARE
--        cur SYS_REFCURSOR;
--    BEGIN
--        cur := PC_MOVILIZACIONES.consultar_movilizacion(true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
--        -- Realizar acciones con el cursor resultante
--    END;
--END;
--/
--
--BEGIN
--    -- Eliminar una movilización
--    PC_MOVILIZACIONES.eliminar_moviliz('123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
--END;
--/
--BEGIN
--    -- Modificar el total de una movilización
--    PC_MOVILIZACIONES.modificar_movilizacion_total( '123');
--END;
--/
--
--BEGIN
--    -- Consultar el total de una movilización
--    DECLARE
--        cur SYS_REFCURSOR;
--    BEGIN
--        cur := PC_MOVILIZACIONES.consultar_(NULL, '123');
--        -- Realizar acciones con el cursor resultante
--    END;
--END;
--/
--
--BEGIN
--    -- Eliminar el total de una movilización
--    PC_MOVILIZACIONES.eliminar_movilizacion_total('123');
--END;
--/
--
--BEGIN
--    -- Modificar una ubicación de una movilización
--    PC_MOVILIZACIONES.modificar_ubicacion_movilizacion( 'Nuevo Registro de Predio');
--END;
--/
--
--BEGIN
--    -- Consultar ubicaciones de una movilización
--    DECLARE
--        cur SYS_REFCURSOR;
--    BEGIN
--        cur := PC_MOVILIZACIONES.consultar_ubicacion_movilizacion('123');
--        -- Realizar acciones con el cursor resultante
--    END;
--END;
--/
--
--BEGIN
--    -- Eliminar una ubicación de una movilización
--    PC_MOVILIZACIONES.eliminar_ubicacion_movilizacion('123');
--END;
--/
--BEGIN
--  PC_CABEZADEGANADO.add_cabezadeganado('ID_001', 'Activo', SYSDATE, 'Madre1', 'Padre1', 'Macho', 'Negro', 1, 500, 'Raza1', 123, 'Area1', 'RegistroPredio1', 'Area2', 'RegistroPredio2', 'Finca1');
--  COMMIT;
--  DBMS_OUTPUT.PUT_LINE('Registro de cabeza de ganado agregado con éxito.');
--EXCEPTION
--  WHEN OTHERS THEN
--    DBMS_OUTPUT.PUT_LINE('Error al agregar el registro de cabeza de ganado: ' || SQLERRM);
--END;
--/
--
---- Ejemplo de llamada al procedimiento modificar_cabezadeganado
--BEGIN
--  PC_CABEZADEGANADO.modificar_cabezadeganado( 'Cabeza de Ganado 1 - Modificado', SYSDATE, 'Madre2', 'Padre2', 'Hembra', 'Blanco', 0, 600, 'Raza2', 456, 'Area1', 'RegistroPredio1', 'Area2', 'RegistroPredio2', 'Finca1');
--  COMMIT;
--  DBMS_OUTPUT.PUT_LINE('Registro de cabeza de ganado modificado con éxito.');
--EXCEPTION
--  WHEN OTHERS THEN
--    DBMS_OUTPUT.PUT_LINE('Error al modificar el registro de cabeza de ganado: ' || SQLERRM);
--END;
--/
--
--BEGIN
--  PC_CABEZADEGANADO.eliminar_cabezade('ID_001', 'Activo', 'Cabeza de Ganado 1', SYSDATE, 'Madre1', 'Padre1', 'Macho', 'Negro', 1, 500, 'Raza1', 123,  'Area1', 'RegistroPredio1', 'Area2','RegistroPredio2','Finca1');
--END;
--/
--
---- Prueba de PC_CABEZADEGANADO.Co3CabezaDeGanado
--DECLARE
--  cur SYS_REFCURSOR;
--BEGIN
--  cur := PC_CABEZADEGANADO.Co3CabezaDe('ID Cabeza de Ganado');
--  -- Realizar acciones con el cursor resultante
--END;
--/
--
---- Prueba para el procedimiento modificar_destinos
--BEGIN
--  PC_CABEZADEGANADO.modificar_destinos('RegistroNacimiento1',  SYSDATE, 'Toro1', 5, 10, 3, 'RazaEspecial1', 1, 'Revisado', 2, 3, 1, 4, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'RegistroPeso1', 'ID_CG1');
--END;
--/
--
---- Prueba para la función consultar_destinos
--DECLARE
--  cur SYS_REFCURSOR;
--BEGIN
--  cur := PC_CABEZADEGANADO.consultar_destinos('RegistroNacimiento1', 'Tipo1', SYSDATE, SYSDATE, SYSDATE, 'Toro1', 'RazaEspecial1', 1, 'Revisado', 2, 3, 1, 4, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'RegistroPeso1', 'ID_CG1');
--  -- Realizar acciones con el cursor resultante
--END;
--/
--
---- Prueba para el procedimiento eliminar_destinos
--BEGIN
--  PC_CABEZADEGANADO.eliminar_destinos('RegistroNacimiento1', 'Tipo1', SYSDATE, SYSDATE, SYSDATE, 'RazaEspecial1', 1, 'Revisado', 2, 3, 1, 4, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'RegistroPeso1', 'ID_CG1');
--END;
--/
--
---- Prueba para la función Co3Destinos
--DECLARE
--  cur SYS_REFCURSOR;
--BEGIN
--  cur := PC_CABEZADEGANADO.C3Destinos(500);
--  -- Realizar acciones con el cursor resultante
--END;
--/
--
--  -- Prueba de modificar_alimentaciones
--BEGIN
--    PC_CABEZADEGANADO.modificar_alimentacione('Características 1', 1, 2, 3, 4, 5, 6, 'ID_CG_001');
--END;
--/
--  -- Prueba de consultar_alimentaciones
--BEGIN
--    DECLARE
--      cur SYS_REFCURSOR;
--    BEGIN
--      cur := PC_CABEZADEGANADO.consultar_alimentacions('Características 1', 1, 2, 3, 4, 5, 6, 'ID_CG_001');
--      -- Realizar acciones con el cursor resultante
--    END;
--END;
--/
---- Prueba de eliminar_alimentaciones
--BEGIN
--    PC_CABEZADEGANADO.eliminar_alimentaciones('Características 1', 'ID_CG_001');
--END;
--/ 
--
---- Prueba de modificar_intervenciones
--BEGIN
--    PC_CABEZADEGANADO.modificar_intervenciones('Revisión 1', 'Desparacitante 1', 'Asistencia 1', 'Salud 1', SYSDATE, 'Prioridad 1', 'ID_CG_001');
--END;
--/ 
---- Prueba de consultar_intervenciones
--BEGIN
--DECLARE
--    cur SYS_REFCURSOR;
--BEGIN
--    cur := PC_CABEZADEGANADO.consultar_intervenciones(1, 2, SYSDATE, 'Asistencia 1', 'Salud 1', SYSDATE, 'Prioridad 1', 'ID_CG_001');
--    END;
--END;
--/
---- Prueba de eliminar_intervenciones
--BEGIN
--   PC_CABEZADEGANADO.eliminar_intervenciones('Revisión 1', 'Desparacitante 1', 1, 2, SYSDATE, 'Prioridad 1', 'ID_CG_001');
--END;
--/ 
---- Prueba de add_tratamientos
--BEGIN
--    PC_CABEZADEGANADO.add_tratamie(1, 'Medicamento 1', 5, 'Especificaciones 1', 'Restricciones 1', 'Cuidados 1');
--END;
--/
---- Prueba de add_vacunas
--BEGIN
--    PC_CABEZADEGANADO.add_vacunas('Número 1', 'Especificaciones 1', 3, 'Cuidados 1', 'A1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Enfermedades virales');
--END;
--/
---- Prueba de modificar_vacunas
--BEGIN
--    PC_CABEZADEGANADO.modificar_vacunas('Número 1', 'Nombre 1', 2, 'Especificaciones 1', 'Cuidados 1', 'Aplicación 1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Tipo 1');
--END;
--/
---- Prueba de consultar_vacunas
--BEGIN
--    DECLARE
--      cur SYS_REFCURSOR;
--    BEGIN
--      cur := PC_CABEZADEGANADO.consultar_vacunas('Número 1',  'Especificaciones 1', 3, 'Cuidados 1', 'Aplicación 1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Tipo 1');
--      -- Realizar acciones con el cursor resultante
--    END;
--END;
--/
---- Prueba de eliminar_vacunas
--BEGIN
--    PC_CABEZADEGANADO.eliminar_vacunas('Número 1', 'Nombre 1', 2, 'Especificaciones 1', 'Aplicación 1', 4, 'Generalidades 1', SYSDATE, SYSDATE, 'Tipo 1');
--END;
--/
---- Prueba de add_maternidades
--BEGIN
--    PC_CABEZADEGANADO.add_maternidades('Número 1', 'F1', 60, 'I1', 'D1', 'Cons1', 9, 'Cur1', 'Riesgo 1', 'Zona1');
--END;
--/
---- Prueba de modificar_maternidades
--BEGIN
--    PC_CABEZADEGANADO.modificar_maternidads('Número 1', 'Fertilidad 1', 66, 'Intervalo Parto 1', 6, 7, 'Cuidado 1', 8, 'Diagnóstico 1', 'Consideraciones 1', 9, 'Curación 1', 'Riesgo 1', 'Zona Cubrimiento 1');
--END;
--/
---- Prueba de consultar_maternidades
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_maternidades('Núm', 5, 'Intervalo Parto 1', 6, 7, 'Cuidado 1', 8, 'Diagnóstico 1', 'Consideraciones 1', 9, 'Curación 1', 'Riesgo 1', 'Zona Cubrimiento 1');
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
--
---- Prueba de eliminar_meternidades
--BEGIN
--  PC_CABEZADEGANADO.eliminar_meternidades('Número 1', 'Fertilidad 1', 'Cuidado 1', 8, 'Diagnóstico 1', 'Consideraciones 1', 9, 'Curación 1', 'Riesgo 1', 'Zona Cubrimiento 1');
--END;
--/
--
---- Prueba de modificar_otros_alimentaciones
--BEGIN
--  PC_CABEZADEGANADO.modificar_otros_alimentaciones('1');
--END;
--/
--
---- Prueba de consultar_otros_alimentaciones
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_otros_alimentacione('Otro 1', 'Características Ali 1');
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
--
---- Prueba de eliminar_otros_alimentaciones
--BEGIN
--  PC_CABEZADEGANA.eliminar_otros_alimentaciones('Otro 1', 'Características Ali 1');
--END;
--/
--
---- Prueba de consultar_cabezadeganado_alimentaciones
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_cabezadeganado_alimentaciones( 'Características Ali');
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
--
---- Prueba de eliminar_cabezadeganado_alimentaciones
--BEGIN
--  PC_CABEZADEGANADO.eliminar_cabezadeganado_alimentaciones(null);
--END;
--/
--
---- Prueba de consultar_cabezadeganado_intervenciones
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_cabezadeganado_intervenciones(true);
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
---- Prueba de eliminar_cabezadeganado_intervenciones
--BEGIN
--  PC_CABEZADEGANADO.eliminar_cabezadeganado_intervenciones(null);
--END;
--/
--
---- Prueba de consultar_intervenciones_tratamientos
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_intervenciones('Revision Inter', 123);
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
--
---- Prueba de eliminar_intervenciones_tratamientos
--BEGIN
--  PC_CABEZADEGANADO.eliminar_intervenciones_tratamientos( 123);
--END;
--/
--
---- Prueba de consultar_intervenciones_vacunas
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_intervenciones_vacunas( 'Numero Vacuna');
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
--
---- Prueba de eliminar_intervenciones_vacunas
--BEGIN
--  PC_CABEZADEGANADO.eliminar_intervenciones_vacunas( 'Numero Vacuna');
--END;
--/
--
---- Prueba de consultar_intervenciones_maternidades
--BEGIN
--  DECLARE
--    cur SYS_REFCURSOR;
--  BEGIN
--    cur := PC_CABEZADEGANADO.consultar_intervenciones('Revision Inter', 'Numero Maternidad');
--    -- Realizar acciones con el cursor resultante
--  END;
--END;
--/
--
---- Prueba de eliminar_intervenciones_maternidades
--BEGIN
--  PC_CABEZADEGANADO.eliminar_intervenciones_maternidades('Numero Maternidad');
--END;
--/
--
