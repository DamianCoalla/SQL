Traer todos los datos de la tabla PRODUCTOS donde la existencia es mayor a 2.
select * from productos where productos.existencia > 2;
Consultar todos los datos de la tabla de EMPLEADOS donde los empleados que tengan más de 30 años.
select * from empleados where fecha_nac < '1993-03-21';
Consultar el id del producto en la tabla DETALLE_ORDENES donde la cantidad sea mayor a 5.
select productoid from detalle_ordenes where cantidad > 5;
Consultar todos los datos de la tabla PRODUCTOS donde el id categoría sea igual a 400.
select * from productos where categoriaid = 400;
Consultar todos los datos de la tabla ORDENES donde la fecha orden es mayor al 14 de junio de 2007.
select * from ordenes where fechaorden > '2007-06-14';

