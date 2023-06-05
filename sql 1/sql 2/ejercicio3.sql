/* Borrar todas las órdenes hechas por el empleado con id 2.
 */
DELETE FROM public.detalle_ordenes 
where ordenid in (select ordenid from ordenes where empleadoid=2)

select * from ordenes where empleadoid=2
DELETE FROM public.detalle_ordenes 
where ordenid in (4,5,7,10)

Borrar el empleado con nombre DIEGO.

DELETE FROM public.empleados where nombre = 'DIEGO'

Borrar todos los detalles de ordenes de la orden con id 1.

Primero hacemos esto pq era FK y estaba relacionada
DELETE FROM public.detalle_ordenes where ordenid = 1
ahora si podemos Borrar
DELETE FROM public.ordenes where ordenid = 1

/*     Borrar todos los productos asociados al idproveedor 10 y luego borrar dicho proveedor */

DELETE FROM public.detalle_ordenes 
where productoid in (select productoid from productos where proveedorid=10)

DELETE FROM public.productos
where proveedorid = 10

DELETE FROM public.proveedores
where proveedorid = 10


    ¿Qué pasa si intentan borrar primero el proveedor? Por ejemplo el proveedor con id 20. 

No te deja pq no esta en cascada, por eso debemos borar de detalles_ordenes y de producto primero pq son 
FK