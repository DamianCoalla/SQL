/* Consultar las ordenes realizadas por cada empleado. */

select ordenes.*, empleados.nombre from ordenes inner join empleados on ordenes.empleadoid = empleados.empleadoid

otra forma
select  ordenes.*, nombre
from ordenes, empleados
where ordenes.empleadoid=empleados.empleadoid

/* Consultar el nombre de la categoría de cada uno de los productos.
 */

select * from categorias inner join productos on categorias.categoriaid = productos.categoriaid

/* otra forma
 */
select nombrecat from categorias inner join productos on categorias.categoriaid = productos.categoriaid

/* otra forma
 */
select distinct 
nombrecat from categorias inner join productos on categorias.categoriaid = productos.categoriaid

/* Consultar la tabla ORDENES con sus respectivos datos de la tabla DETALLE_ORDENES.
 */
select * from ordenes inner join detalle_ordenes on ordenes.ordenid = detalle_ordenes.ordenid

/* Consultar todas las ordenes que realizaron los clientes.
 */
SELECT *
	FROM public.ordenes inner join clientes on clientes.clienteid = ordenes.clienteid


