/* Consultar las órdenes realizadas por el empleado con nombre MARIO.
 */
select * from ordenes inner join empleados on ordenes.empleadoid = empleados.empleadoid 
where empleados.nombre = 'MARIO'

/* Consultar todos los productos de la categoría COSMETICOS. */

SELECT * FROM categorias inner join productos on categorias.categoriaid = productos.categoriaid 
where categorias.nombrecat = 'COSMETICOS'

/* Consultar la tabla ORDENES con sus respectivos datos de la tabla DETALLE_ORDENES y ordenarlos por 
fecha orden de manera descendente. */

SELECT * FROM ordenes inner join detalle_ordenes on ordenes.ordenid = detalle_ordenes.ordenid 
order by ordenes.fechaorden desc

/* Consultar todas las órdenes que realizaron los clientes con cédula que arranca con el número 18.
 */

 SELECT * FROM ordenes inner join clientes on ordenes.clienteid = clientes.clienteid 
where clientes.cedula_ruc >= '1800000000'

/* otra forma 
 */
SELECT * FROM ordenes inner join clientes on ordenes.clienteid = clientes.clienteid 
where clientes.cedula_ruc  like '18%'
