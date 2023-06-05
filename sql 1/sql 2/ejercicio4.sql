Modificar el apellido del empleado con id 5.

UPDATE public.empleados
	SET apellido='Sambuceti'
	WHERE empleadoid = 4

Modificar la fechaorden al día de hoy, de la orden con id 7.

UPDATE public.ordenes
	SET fechaorden='2023-04-21'
	WHERE ordenid = 7

   Modificar el precio unitario a $2 y la existencia a 20
    del producto con description “SALCHICAS DE POLLO”. 

    UPDATE public.productos
	SET preciounit= 2, existencia = 20
	WHERE descripcion = 'SALCHICHAS DE POLLO'

    
