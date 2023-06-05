Mostrar todos los datos de la tabla Socios.
select * from "EjercicioDVD".socios

Mostrar el nombre y el precio de alquiler de cada película.
Select "Nombre", "PrecioAlquiler" from "EjercicioDVD"."Peliculas"

Mostrar todos los datos de las películas que correspondan a las categorías
1, 5, 23, 24 y 30.

Select * from "EjercicioDVD"."Peliculas" where "IdCategoria" in (1, 5, 23, 24, 30)

Listar los nombres de las películas que fueron alquiladas el 19-04-99 y que
todavía NO fueron devueltas.

UPDATE "EjercicioDVD"."DetalleFactura"
	SET "TipoFactura"='Credito', "NroFactura"=003, "CodigoPelicula"=789, "FechaPrevDev"='1999-04-19', "FechaRealDev"=null
	WHERE "FechaPrevDev"='1999-04-19';

    Select "Nombre" from "EjercicioDVD"."Peliculas" where "CodPelicula" = (Select "CodigoPelicula" 
	from "EjercicioDVD"."DetalleFactura" where "FechaPrevDev" = '1999-04-19')

midudev