--PRUEBAS 
--Historias complementarias

--1 Historia
--Agregar una cabeza de ganado 
--si la base de datos esta en ceros se genera la finca 
BEGIN
  PC_GERENTEDEPROYECTOS.add_Fincas('Finca AAA', 'Especificaciones de la Finca A');
END;
/

--consulta para saber que fincas tenemos con base de datos poblada
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.co_Fincas('1', NULL, NULL);
END;
/

-- si no se tuviese un usuario se crea uno con perfil de trabajador 
BEGIN
  PC_GERENTEDEPROYECTOS.add_usuarios('Usuario L', 'cc','123', 1, 'EA','20/09/2022', 'Finca AAA', 'correo@ejemplo.com');
END;
/

-- se consulta para tener id y tener ese usuario trabajador
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.co_usuarios(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/

--Consultar el trabajador
SELECT * FROM Trabajadores;

-- se crea una ubicacion si no se tiene una 
SELECT * FROM Fincas;
BEGIN
    PC_TRABAJADOR.add_ubicacion('Area1100000001', 'Higiene1', 'Tipo1', 'Clasificacion1', 'F0006');
END;
/

-- se consultan las ubicaciones existentes 
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_TRABAJADOR.consultar_ubicacion('Area1100000001','11231', 'Higiene1', 'Tipo1', 'Clasificacion1', 'F0006');

END;
/

--buscar el prado
SELECT * FROM Prados;

-- se consulta la informacion de prados 
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_TRABAJADOR.consultar_prados('AreaUbi1', 'RegistroPredioUbi1', 'Sostenibilidad2', 'TipoPastaje2', 'Clima2', 200);

END;
/

--Buscar la granja 
SELECT * FROM Granjas;

-- se consulta la informacion de granjas 
DECLARE
    result SYS_REFCURSOR;
BEGIN
    result := PC_TRABAJADOR.consultar_granjas('AreaUbi1', 'RegistroPredioUbi1', 2, 'Calidad2', 200);

END;
/
--Se revisa Cabeza de ganado
SELECT * FROM CabezaDeGanado;




--2 Historia 
--agrerar un comprador interesado en cabeza de ganado y cambiar el estado de la misma 
--si la base de datos esta en ceros se genera la finca 
BEGIN
  PC_GERENTEDEPROYECTOS.add_Fincas('Finca BBB', 'Especificaciones de la Finca A');
END;
/

--consulta para saber que fincas tenemos con base de datos poblada
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.co_Fincas('1', NULL, NULL);
END;
/
--no
-- si no se tuviesen un usuarios se crean 2 uno con perfil de Comprador y otro con perfil Trabajador 
BEGIN
  PC_GERENTEDEPROYECTOS.add_usuarios('UsuarioM', 'TI','1234', 1, 'EA','20/09/2022', 'Finca AAA', 'correo@ejemplo.com');
END;
/

-- se consulta para tener id y crear Comprador a la par que el trabajador 
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.co_usuarios(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
END;
/

-- se crea el trabajador si no existe uno 
BEGIN
  PC_GERENTEDEPROYECTOS.add_trabajador('DNI', 31563, TO_DATE('2023-05-29', 'YYYY-MM-DD'), 'Gerente', 'Finca A', 'Soltero', 'Sin familiares', 1, 'aprendizaje', 40, 5000, '13 horas diarias');
END;
/

--consultar trabajador 
--agregar un comprador si no existe uno 
BEGIN
  PC_GERENTEDEPROYECTOS.add_comprador('DNI', 731563, 'Especificaciones', 'Raza', 'Tipo A', 'Tarjeta de crédito');
END;
/


--consultar Comprador 
DECLARE
  result SYS_REFCURSOR;
BEGIN
  result := PC_GERENTEDEPROYECTOS.consultar_comprador(NULL, NULL, TO_DATE('2023-05-29', 'YYYY-MM-DD'), NULL, NULL, NULL, NULL);
END;
/

--consultar cabeza de ganado 
SELECT * FROM CabezaDeGanado;

--modifica es estado ya que un cliente esta interezado y es casi un hecho la venta 
BEGIN
    PC_TRABAJADOR.modificar_cabezadeganado('ID1', 'Estado1', 'Nombre2', SYSDATE, 'Madre2', 'Padre2', 'Sexo2', 'Color2', 2, 200, 'Raza2', 456, 'Area3', 'RegistroPredio3', 'Area4', 'RegistroPredio4', 'FincasID2');
END;
/
