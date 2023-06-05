--ActoresE
CREATE OR REPLACE PACKAGE PC_GERENTEDEPROYECTOS AS
    PROCEDURE add_Fincas(nombre VARCHAR2, especificaciones VARCHAR2);
    PROCEDURE mo_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2);
    FUNCTION co_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE add_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2);
    PROCEDURE modificar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2);
    FUNCTION consultar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, numerodecontrato VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, numeropolizadeseguridad VARCHAR2, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2);
    PROCEDURE add_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2);
    PROCEDURE modificar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2);
    FUNCTION consultar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechacompra DATE, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE add_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2);
    PROCEDURE modificar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2);
    FUNCTION consultar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, registrosanitario VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2);
    PROCEDURE add_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2);
    PROCEDURE mo_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2,numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2);
    FUNCTION co_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2) RETURN SYS_REFCURSOR;
END PC_GERENTEDEPROYECTOS;
/

CREATE OR REPLACE PACKAGE PC_SUBGERENTE AS
    FUNCTION consultar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE modificar_cabezadeganado(estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2);
	FUNCTION consultar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE add_movilizacion(guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechademovilizacion DATE);
	PROCEDURE modificar_movilizacion(guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechademovilizacion DATE);
	FUNCTION consultar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_movilizacion(numeroguia VARCHAR2, guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechaderegistro DATE, fechademovilizacion DATE);
    PROCEDURE add_producto(tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    PROCEDURE modificar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    FUNCTION consultar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    PROCEDURE modificar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER);
	PROCEDURE modificar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER);
	PROCEDURE modificar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2);
	PROCEDURE modificar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2);
	END PC_SUBGERENTE;
/

CREATE OR REPLACE PACKAGE PC_TRABAJADOR AS
    FUNCTION co_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE add_destinos(tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, id_CG VARCHAR2);
	PROCEDURE modificar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, id_CG VARCHAR2);
	FUNCTION consultar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, numeroderegistroparto INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, registropeso VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE add_ubicacion(area VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2);
	PROCEDURE modificar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2);
	FUNCTION consultar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2);
	PROCEDURE add_servicio(tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER);
    PROCEDURE modificar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER);
    FUNCTION consultar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER);
    PROCEDURE add_intervenciones(desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2);
	PROCEDURE modificar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2);
	FUNCTION consultar_intervenciones(revision VARCHAR2, desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, fechadeintervencion DATE, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE add_tratamientos(nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2);
	PROCEDURE modificar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2);
	FUNCTION consultar_tratamientos(numerodetratamiento INTEGER, nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE add_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2);
	PROCEDURE modificar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2);
	FUNCTION consultar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE eliminar_alimentaciones(caracteristicas VARCHAR2, pastaje NUMBER, suplementos NUMBER, vitaminas NUMBER, liquido NUMBER, salmineral NUMBER, melaza NUMBER, id_CG VARCHAR2);
    PROCEDURE add_cabezadeganado(nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2);
	PROCEDURE modificar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2);
	FUNCTION consultar_cabezadeganado(id_ VARCHAR2, estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE add_producto(tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    PROCEDURE modificar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    FUNCTION consultar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE eliminar_producto(productos_id VARCHAR2, fechadecompra DATE, tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2);
    PROCEDURE add_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER);
	PROCEDURE modificar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER);
	FUNCTION consultar_prados(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sostenibilidad VARCHAR2, tipodepastaje VARCHAR2, clima VARCHAR2, alturasobreniveldelmar INTEGER) RETURN SYS_REFCURSOR;
	PROCEDURE add_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER);
	PROCEDURE modificar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER);
	FUNCTION consultar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER) RETURN SYS_REFCURSOR;
	PROCEDURE add_vacunas(nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2);
	PROCEDURE modificar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2);
	FUNCTION consultar_vacunas(numerovacuna VARCHAR2, nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2) RETURN SYS_REFCURSOR;
	PROCEDURE add_maternidades(fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2);
	PROCEDURE modificar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2);
	FUNCTION consultar_maternidades(numeromaternidad VARCHAR2, fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2) RETURN SYS_REFCURSOR;
    PROCEDURE ad_PQRS(id_CG VARCHAR, descripcion XMLTYPE, nombrearchivo VARCHAR, urlarchivo VARCHAR);
    PROCEDURE ad_Anexo(ticket VARCHAR, nombre VARCHAR, url VARCHAR);
    PROCEDURE mo_PQRS(ticket VARCHAR, estado VARCHAR);
    PROCEDURE el_PQRS(ticket VARCHAR);
    FUNCTION co_PQRS RETURN SYS_REFCURSOR;
    PROCEDURE ad_Respuesta(fecha DATE, descripcion VARCHAR, nombre VARCHAR, correo VARCHAR, comentario VARCHAR, puntuacion VARCHAR);
    END PC_TRABAJADOR;
/

--ActoresI
CREATE OR REPLACE PACKAGE  BODY PC_GERENTEDEPROYECTOS AS
	PROCEDURE add_Fincas(nombre VARCHAR2, especificaciones VARCHAR2) IS 
	BEGIN 
		INSERT INTO Fincas(nombre, especificaciones)
		VALUES (nombre, especificaciones);
        COMMIT;
            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20010, 'Error al insertar Finca.');
	END add_Fincas;
    
    PROCEDURE mo_Fincas(id_ VARCHAR2, nombre VARCHAR2, especificaciones VARCHAR2) IS
    BEGIN
       UPDATE Fincas SET especificaciones = especificaciones
	   WHERE id_ = id_;
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
    
    
    PROCEDURE add_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2,estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2) IS
        BEGIN 
        INSERT INTO Trabajadores(Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, estadocivil, familiares, polizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso ) VALUES (Tipo_idusu, numero_idusu, fechadeingresotrabajar, cargo, encargadofinca, estadocivil, familiares, polizadeseguridad, tipodecontrato, horastrabajadas, salario, tiempodedescanso );
        COMMIT; 
    END add_trabajador;

    PROCEDURE modificar_trabajador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, fechadeingresotrabajar DATE, cargo VARCHAR2, encargadofinca VARCHAR2, estadocivil VARCHAR2, familiares VARCHAR2, polizadeseguridad NUMBER, tipodecontrato VARCHAR2, horastrabajadas INTEGER, salario INTEGER, tiempodedescanso VARCHAR2)
        IS BEGIN 
        UPDATE Trabajadores SET numeropolizadeseguridad = numeropolizadeseguridad, fechadeingresotrabajar = fechadeingresotrabajar
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
        
    PROCEDURE add_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) 
        IS BEGIN 
        INSERT INTO Compradores(Tipo_idusu, numero_idusu, especificaciones, razasdecompra, tipos, mododepago) VALUES (Tipo_idusu, numero_idusu, especificaciones, razasdecompra, tipos, mododepago); 
        COMMIT; 
    END add_comprador;

    PROCEDURE modificar_comprador(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, especificaciones VARCHAR2, razasdecompra VARCHAR2, tipos VARCHAR2, mododepago VARCHAR2) 
        IS BEGIN 
        UPDATE Compradores SET especificaciones = especificaciones, razasdecompra = razasdecompra, tipos = tipos, mododepago = mododepago 
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
    
    PROCEDURE add_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) IS
    BEGIN 
        INSERT INTO Proveedores(Tipo_idusu, numero_idusu, nombre, tipo, especificaciones, servicio_id, producto_id)
        VALUES (Tipo_idusu, numero_idusu, nombre, tipo, especificaciones, servicio_id, producto_id); 
        COMMIT; 
    END add_proveedor;

    PROCEDURE modificar_proveedor(Tipo_idusu VARCHAR2, numero_idusu VARCHAR2, nombre VARCHAR2, tipo VARCHAR2, especificaciones VARCHAR2, servicio_id VARCHAR2, producto_id VARCHAR2) IS
    BEGIN 
        UPDATE Proveedores
        SET especificaciones = especificaciones
        WHERE Tipo_idusu = Tipo_idusu AND numero_idusu = numero_idusu AND nombre = nombre; 
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
    
    PROCEDURE add_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2,numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2)
    IS 
	BEGIN 
		INSERT INTO Usuarios(nombre, Tipo_id,numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo)
		VALUES (nombre, Tipo_id,numero_id, asociado, especificaciones, fechaingresomercado, id_fincas, correo);
        COMMIT;
            END add_usuarios;
    PROCEDURE mo_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2,asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2)
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

END PC_GERENTEDEPROYECTOS;
/

CREATE OR REPLACE PACKAGE BODY PC_SUBGERENTE AS
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

    PROCEDURE modificar_cabezadeganado(estado VARCHAR2, nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2)
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
    
    PROCEDURE add_movilizacion(guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechademovilizacion DATE) IS
	BEGIN 
        INSERT INTO Movilizaciones(guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechademovilizacion)
        VALUES (guiasdemovilizacion, predio, registro, origen, destino, nombretrabajador, findelaactividad, especificaciones, fechademovilizacion); 
        COMMIT; 
    END add_movilizacion;

    PROCEDURE modificar_movilizacion(guiasdemovilizacion VARCHAR2, predio VARCHAR2, registro VARCHAR2, origen VARCHAR2, destino VARCHAR2, nombretrabajador VARCHAR2, findelaactividad VARCHAR2, especificaciones VARCHAR2, fechademovilizacion DATE) IS
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
    
    PROCEDURE add_producto(tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) IS
    BEGIN 
        INSERT INTO Productos(tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa)
        VALUES (tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa); 
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
    
    PROCEDURE modificar_granjas(area_ubi VARCHAR2, registropredio_ubi VARCHAR2, sistemadeordeno NUMBER, calidad VARCHAR2, establo NUMBER)
        IS BEGIN
        UPDATE Granjas SET sistemadeordeno = sistemadeordeno, calidad = calidad,  establo = establo
        WHERE area_ubi = area_ubi AND registropredio_ubi = registropredio_ubi;
        COMMIT;
        --aqui ira el roll back
        EXCEPTION
            WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-00005, 'Error al ');
    END modificar_granjas;
    
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
    
    END PC_SUBGERENTE;
/


CREATE OR REPLACE PACKAGE BODY PC_TRABAJADOR AS
    FUNCTION co_usuarios(nombre VARCHAR2, Tipo_id VARCHAR2, numero_id VARCHAR2, asociado NUMBER, especificaciones VARCHAR2, fechaingresomercado DATE, id_fincas VARCHAR2, correo VARCHAR2) RETURN SYS_REFCURSOR
    IS
        co_usuarios SYS_REFCURSOR;
    BEGIN
        OPEN co_usuarios FOR
            SELECT * FROM Usuarios;
        RETURN co_usuarios;
    END co_usuarios;
    
    PROCEDURE  add_destinos(tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        INSERT INTO destinos(tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, id_CG)
            VALUES (tipo, fechaultimoparto, fechaprimerparto, fechaultimoservicio, toro, numerodeservicios, crias, razaespecial, confirmado, revisado, litrosdelechemanana, litrosdelechetarde, secado, edadprimerparto, pesokg, engorde, ambiente, bascula, id_CG);
        COMMIT;
        --aqui ira el roll back
        --EXCEPTION
        --WHEN OTHERS THEN
        --ROLLBACK;
        --RAISE_APPLICATION_ERROR(-####, 'Error al ');
    END add_destinos;

    PROCEDURE modificar_destinos(registronacimiento VARCHAR2, tipo VARCHAR2, fechaultimoparto DATE, fechaprimerparto DATE, fechaultimoservicio DATE, toro VARCHAR2, numerodeservicios INTEGER, crias INTEGER, razaespecial VARCHAR2, confirmado NUMBER, revisado VARCHAR2, litrosdelechemanana INTEGER, litrosdelechetarde INTEGER, secado NUMBER, edadprimerparto INTEGER, pesokg INTEGER, engorde VARCHAR2, ambiente VARCHAR2, bascula VARCHAR2, id_CG VARCHAR2)
        IS BEGIN
        UPDATE Destinos SET tipo = tipo, fechaultimoparto = fechaultimoparto, fechaprimerparto = fechaprimerparto, fechaultimoservicio = fechaultimoservicio, toro = toro, numerodeservicios =numerodeservicios, crias = crias, razaespecial = razaespecial, revisado = revisado, litrosdelechemanana = litrosdelechemanana, litrosdelechetarde = litrosdelechetarde, secado = secado, edadprimerparto = edadprimerparto, pesokg = pesokg, engorde = engorde, ambiente = ambiente, bascula = bascula
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

    PROCEDURE add_ubicacion(area VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) IS
    BEGIN
        INSERT INTO Ubicaciones(area, higiene, tipo, clasificacion, id_fincas)
        VALUES (area, higiene, tipo, clasificacion, id_fincas);
        COMMIT;
    END add_ubicacion;
    
    PROCEDURE modificar_ubicacion(area VARCHAR2, registrodepredio VARCHAR2, higiene VARCHAR2, tipo VARCHAR2, clasificacion VARCHAR2, id_fincas VARCHAR2) IS
    BEGIN
        UPDATE Ubicaciones SET higiene = higiene, tipo = tipo, clasificacion = clasificacion
        WHERE  registrodepredio =  registrodepredio;
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
        DELETE FROM Ubicaciones 
        WHERE id_fincas = id_fincas;
        COMMIT;
    END eliminar_ubicacion;
    
    PROCEDURE add_servicio(tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER) IS 
    BEGIN 
        INSERT INTO Servicios(tipodemecanismo, productos, tecnologia , comercializacion, proceso, clasificacion, criadeanimales)
        VALUES (tipodemecanismo, productos, tecnologia , comercializacion, proceso, clasificacion, criadeanimales); 
        COMMIT; 
    END add_servicio;

    PROCEDURE modificar_servicio(servicio_id VARCHAR2, tipodemecanismo VARCHAR2, productos VARCHAR2, tecnologia VARCHAR2, comercializacion VARCHAR2, proceso VARCHAR2, clasificacion VARCHAR2, criadeanimales NUMBER)
    IS BEGIN 
        UPDATE Servicios
        SET tipodemecanismo = tipodemecanismo, productos = productos, tecnologia = tecnologia, comercializacion = comercializacion, proceso = proceso, clasificacion = clasificacion, criadeanimales = criadeanimales
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
    
    PROCEDURE  add_intervenciones(desparacitante VARCHAR2, vacuna NUMBER, inseminacion NUMBER, tipodeasistencia VARCHAR2, estadodesalud VARCHAR2, fechadeculminacion DATE, prioridad VARCHAR2, id_CG VARCHAR2)
        IS
        BEGIN
        INSERT INTO intervenciones(desparacitante, vacuna, inseminacion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG)
            VALUES (desparacitante, vacuna, inseminacion, tipodeasistencia, estadodesalud, fechadeculminacion, prioridad, id_CG);
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

    PROCEDURE  add_tratamientos(nombremedicamento VARCHAR2, tiempodeduracion INTEGER, especificaciones VARCHAR2, restricciones VARCHAR2, cuidados VARCHAR2)
        IS
        BEGIN
        INSERT INTO tratamientos(nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados)
            VALUES (nombremedicamento, tiempodeduracion, especificaciones, restricciones, cuidados);
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
    
    PROCEDURE  add_cabezadeganado(nombre VARCHAR2, fechanacimiento DATE, madre VARCHAR2, padre VARCHAR2, sexo VARCHAR2, color VARCHAR2, confirmado NUMBER, pesaje INTEGER, raza VARCHAR2, inseminador NUMBER, area_ubi1 VARCHAR2, registropredio_ubi1 VARCHAR2, area_ubi2 VARCHAR2, registropredio_ubi2 VARCHAR2, id_fincas VARCHAR2)
        IS
        BEGIN
        INSERT INTO cabezadeganado( nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas)
            VALUES (nombre, fechanacimiento, madre, padre, sexo, color, confirmado, pesaje, raza, inseminador, area_ubi1, registropredio_ubi1, area_ubi2, registropredio_ubi2, id_fincas);
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
    
    PROCEDURE add_producto(tipodeventa VARCHAR2, convenciondeADN VARCHAR2, vistatecnica VARCHAR2, panoramadeproduccion VARCHAR2, rentabilidad INTEGER, bonodeventa INTEGER, casadeventa VARCHAR2) IS
    BEGIN 
        INSERT INTO Productos(tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa)
        VALUES (tipodeventa, convenciondeADN, vistatecnica, panoramadeproduccion, rentabilidad, bonodeventa, casadeventa); 
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
            RAISE_APPLICATION_ERROR(-00002, 'Error al modificar prados');
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

    PROCEDURE add_vacunas(nombre VARCHAR2, dosis INTEGER, especificaciones VARCHAR2, tiempodeduracion INTEGER, cuidados VARCHAR2, aplicacion VARCHAR2, ciclo INTEGER, generalidades VARCHAR2, fechadeinicio DATE, fechaculminacion DATE, tipo VARCHAR2)
        IS
        BEGIN
        INSERT INTO vacunas(nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo)
            VALUES (nombre, dosis, especificaciones, tiempodeduracion, cuidados, aplicacion, ciclo, generalidades, fechadeinicio, fechaculminacion, tipo);
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
       
    PROCEDURE  add_maternidades(fertilidad VARCHAR2, tasadedestete INTEGER, intervalodeparto VARCHAR2, inseminacion NUMBER, periododegestacion INTEGER, cuidado VARCHAR2, nacimiento NUMBER, diagnostico VARCHAR2, consideraciones VARCHAR2, atenciondecria NUMBER, curacion VARCHAR2, riesgo VARCHAR2, zonadecubrimiento VARCHAR2)
        IS
        BEGIN
        INSERT INTO maternidades(fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento)
            VALUES (fertilidad, tasadedestete, intervalodeparto, inseminacion, periododegestacion, cuidado, nacimiento, diagnostico, consideraciones, atenciondecria, curacion, riesgo, zonadecubrimiento);
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

    
END PC_TRABAJADOR;
/

DROP PACKAGE PC_GERENTEDEPROYECTOS;
DROP PACKAGE PC_SUBGERENTE;
DROP PACKAGE PC_TRABAJADOR;
--Seguridad
CREATE ROLE GERENTEDEPROYECTOS;
GRANT GERENTEDEPROYECTOS TO bd1000024558;

GRANT EXECUTE 
ON PC_GERENTEDEPROYECTOS
TO GERENTEDEPROYECTOS;
COMMIT;

CREATE ROLE SUBGERENTE;
GRANT SUBGERENTE TO bd1000024558;

GRANT EXECUTE 
ON PC_SUBGERENTE
TO SUBGERENTE;
COMMIT;

CREATE ROLE TRABAJADOR;
GRANT SUBGERENTE TO bd1000024558;

GRANT EXECUTE 
ON PC_TRABAJADOR
TO TRABAJADOR;
COMMIT;

--XSeguridad
DROP ROLE GERENTEDEPROYECTOS;
DROP ROLE SUBGERENTE;
DROP ROLE TRABAJADOR; 
--SeguridadOk
--SELECT * FROM Trabajadores.bd1000024558


--SeguridadOk 
BEGIN
  PC_GERENTEDEPROYECTOS.add_Fincas('Finca A', 'Especificaciones de la Finca A');
END;
/
BEGIN
  PC_GERENTEDEPROYECTOS.mo_Fincas('1', 'Finca B', 'Nuevas especificaciones de la Finca B');
END;
/
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.co_Fincas('1', NULL, NULL);
END;
/
BEGIN
  PC_GERENTEDEPROYECTOS.eliminar_trabajador('cc', '1053325716', '12/06/2023', 'Administrativa', 'Primavera', '001100','soltera', 'Ruben', 1, '001100', 'término indefinido', 23, 123123, '2 días');
END;
/
BEGIN
  PC_GERENTEDEPROYECTOS.modificar_comprador('DNI', '87654321', 'Nuevas especificaciones del comprador', 'Raza C', 'Tipo B', 'Efectivo');
END;
/
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.consultar_comprador(NULL, NULL, TO_DATE('2023-05-29', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL);
END;
/
BEGIN
  PC_GERENTEDEPROYECTOS.modificar_proveedor('DNI', '24681357', 'Proveedor A', 'Tipo B', 'Nuevas especificaciones del proveedor A', 'Servicio B', 'Producto B');
END;
/
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.consultar_proveedor(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/
BEGIN
  PC_GERENTEDEPROYECTOS.eliminar_proveedor('DNI', '24681357', 'Proveedor A', NULL, NULL, NULL, NULL, NULL);
END;
/
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.co_usuarios(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/

BEGIN
  PC_SUBGERENTE.modificar_cabezadeganado('Estado A', 'Nombre A', TO_DATE('2023-05-29', 'YYYY-MM-DD'), 'Madre A', 'Padre A', 'Macho', 'Color A', 1, 100, 'Raza A', 1, 'Area 1', 'Registro Predio 1', 'Area 2', 'Registro Predio 2', 'ID Fincas');
END;
/
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_SUBGERENTE.consultar_cabezadeganado(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/
BEGIN
  PC_SUBGERENTE.add_movilizacion('Guía A', 'Predio A', 'Registro A', 'Origen A', 'Destino A', 'Trabajador A', '2023-05-29', 'Especificaciones de la movilización A', TO_DATE('2023-05-29', 'YYYY-MM-DD'));
END;
/
BEGIN
  PC_SUBGERENTE.modificar_movilizacion('Guía A', 'Predio B', 'Registro B', 'Origen B', 'Destino B', 'Trabajador B', '2023-05-30', 'Nuevas especificaciones de la movilización A', TO_DATE('2023-05-30', 'YYYY-MM-DD'));
END;
/
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_SUBGERENTE.consultar_movilizacion(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/
BEGIN
  PC_SUBGERENTE.eliminar_movilizacion('Guía A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/
BEGIN
  PC_SUBGERENTE.add_producto('Tipoa', 'Convea', 'Vista A', 'PanoramaA', 100, 50, 'CasA');
END;
/

BEGIN
  PC_SUBGERENTE.modificar_producto('ID Producto A', TO_DATE('2023-05-29', 'YYYY-MM-DD'), 'Tipo de venta A', 'Convención de ADN A', 'Vista técnica A', 'Panorama de producción A', 100, 50, 'Casa de venta A');
END;
/

DECLARE
  result SYS_REFCURSOR;
BEGIN
  -- Prueba de la función consultar_producto
  result := PC_SUBGERENTE.consultar_producto(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/
BEGIN
  -- Prueba del procedimiento eliminar_producto
  PC_SUBGERENTE.eliminar_producto('ID Producto A', TO_DATE('2023-05-29', 'YYYY-MM-DD'), 'Tipo de venta A', 'Convención de ADN A', 'Vista técnica A', 'Panorama de producción A', 100, 50, 'Casa de venta A');
END;
/
BEGIN
  -- Prueba del procedimiento modificar_prados
  PC_SUBGERENTE.modificar_prados('Area Ubi A', 'Registro Predio Ubi A', 'Sostenibilidad A', 'Tipo de pastaje A', 'Clima A', 200);
END;
/
BEGIN
  -- Prueba del procedimiento modificar_granjas
  PC_SUBGERENTE.modificar_granjas('Area Ubi B', 'Registro Predio Ubi B', 2, 'Calidad B', 3);
END;
/
BEGIN
  -- Prueba del procedimiento modificar_vacunas
  PC_SUBGERENTE.modificar_vacunas('Número de vacuna A', 'Nombre A', 3, 'Especificaciones A', 7, 'Cuidados A', 'Aplicación A', 1, 'Generalidades A', TO_DATE('2023-05-29', 'YYYY-MM-DD'), TO_DATE('2023-06-05', 'YYYY-MM-DD'), 'Tipo A');
END;
/
BEGIN
  -- Prueba del procedimiento modificar_maternidades
  PC_SUBGERENTE.modificar_maternidades('Número maternidad A', 'Fertilidad A', 4, 'Intervalo de parto A', 2, 9, 'Cuidado A', 5, 'Diagnóstico A', 'Consideraciones A', 6, 'Curación A', 'Riesgo A', 'Zona de cubrimiento A');
END;
/
DECLARE
  usuarios_cursor SYS_REFCURSOR;
BEGIN
  usuarios_cursor := PC_TRABAJADOR.co_usuarios('John Doe', 'ID', '123456789', 1, 'Especificaciones', SYSDATE, 'ID_Fincas', 'correo@example.com');
END;
/
BEGIN
    PC_TRABAJADOR.add_destinos('Leche', SYSDATE, SYSDATE, SYSDATE, 'Toro1', 5, 3, 'Raza1', 1, 'Revisado', 10, 8, 1, 24, 500, 'Engorde1', 'Ambiente1', 'Bascula1', 'ID1');
END;
/
BEGIN
    PC_TRABAJADOR.modificar_destinos('Registro1', 'Tipo2', SYSDATE, SYSDATE, SYSDATE, 'Toro2', 3, 2, 'Raza2', 0, 'No revisado', 8, 6, 0, 20, 450, 'Engorde2', 'Ambiente2', 'Bascula2', 'ID2');
END;
/

BEGIN
    PC_TRABAJADOR.modificar_ubicacion('Area2', 'RegistroPredio2', 'Higiene2', 'Tipo2', 'Clasificacion2', 'FincasID2');
END; 
/
BEGIN
    PC_TRABAJADOR.modificar_servicio('ServicioID1', 'Mecanismo2', 'Productos2', 'Tecnologia2', 'Comercializacion2', 'Proceso2', 'Clasificacion2', 5);
END;
/
BEGIN
    PC_TRABAJADOR.eliminar_servicio('ServicioID1', 'Mecanismo2', 'Productos2', 'Tecnologia2', 'Comercializacion2', 'Proceso2', 'Clasificacion2', 5);
END;
/ 
BEGIN
    PC_TRABAJADOR.modificar_intervenciones('Revision1', 'Desparacitante2', 2, 2, SYSDATE, 'Asistencia2', 'Salud2', SYSDATE, 'Prioridad2', 'CGID2');
END;
/
BEGIN
    PC_TRABAJADOR.add_tratamientos('Medicamento1', 10, 'Especificaciones1', 'Restricciones1', 'Cuidados1');
END;
/
BEGIN
    PC_TRABAJADOR.modificar_tratamientos(1, 'Medicamento2', 15, 'Especificaciones2', 'Restricciones2', 'Cuidados2');
END;
/
BEGIN
    PC_TRABAJADOR.modificar_alimentaciones('Caro2', 2, 2, 2, 2, 2, 2, 'CGID2');
END;
/

BEGIN
    PC_TRABAJADOR.modificar_cabezadeganado('ID1', 'Estado1', 'Nombre2', SYSDATE, 'Madre2', 'Padre2', 'Sexo2', 'Color2', 2, 200, 'Raza2', 456, 'Area3', 'RegistroPredio3', 'Area4', 'RegistroPredio4', 'FincasID2');
END;
/

BEGIN
    PC_TRABAJADOR.add_producto('TipoVenta1', 'ConADN1', 'Va1', 'P1', 100, 50, 'CasaVenta1');
END;
/
BEGIN
    PC_TRABAJADOR.modificar_producto('ProductoID1', SYSDATE, 'TipoVenta2', 'ConvencionADN2', 'VistaTecnica2', 'PanoramaProduccion2', 200, 100, 'CasaVenta2');
END;
/

BEGIN
    PC_TRABAJADOR.modificar_prados('AreaUbi1', 'RegistroPredioUbi1', 'Sostenibilidad2', 'TipoPastaje2', 'Clima2', 200);
END;
/

BEGIN
    PC_TRABAJADOR.modificar_granjas('AreaUbi1', 'RegistroPredioUbi1', 2, 'Calidad2', 200);
END;
/
BEGIN
    PC_TRABAJADOR.add_vacunas('Nombre1', 1, 'Especificaciones1', 30, 'Cuidados1', 'A1', 2, 'Generalidades1', DATE '2023-01-01', DATE '2023-01-31', 'Reproductiva');
END;
/
BEGIN
    PC_TRABAJADOR.modificar_vacunas('NumeroVacuna1', 'Nombre1', 1, 'Especificaciones2', 60, 'Cuidados2', 'Aplicacion2', 3, 'Generalidades2', DATE '2023-02-01', DATE '2023-02-28', 'Tipo2');
END;
/
BEGIN
    PC_TRABAJADOR.add_maternidades('Fer1', 66, 'Inter1', 1, 280, 'Cuidado1', 2, 'Dia1', 'Cs1', 3, 'Curacion1', 'Riesgo1', 'Zona1');
END;
/
BEGIN
    PC_TRABAJADOR.modificar_maternidades('NumeroMaternidad1', 'Fertilidad1', 5, 'IntervaloParto2', 2, 270, 'Cuidado2', 3, 'Diagnostico2', 'Consideraciones2', 4, 'Curacion2', 'Riesgo2', 'ZonaCubrimiento2');
END;
/

