-- Table: Sprint 4.prioridad

-- DROP TABLE IF EXISTS "Sprint 4".prioridad;

CREATE TABLE IF NOT EXISTS "Sprint 4".prioridad
(
    id integer NOT NULL DEFAULT nextval('"Sprint 4".prioridad_id_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    descripcion character varying COLLATE pg_catalog."default",
    CONSTRAINT prioridad_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sprint 4".prioridad
    OWNER to postgres;

    -- Table: Sprint 4.tareas

-- DROP TABLE IF EXISTS "Sprint 4".tareas;

CREATE TABLE IF NOT EXISTS "Sprint 4".tareas
(
    id integer NOT NULL DEFAULT nextval('"Sprint 4".tareas_id_seq'::regclass),
    titulo character varying COLLATE pg_catalog."default",
    prioridad_id integer,
    usuario_id integer,
    completado boolean,
    CONSTRAINT tareas_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sprint 4".tareas
    OWNER to postgres;

    -- Table: Sprint 4.usuario

-- DROP TABLE IF EXISTS "Sprint 4".usuario;

CREATE TABLE IF NOT EXISTS "Sprint 4".usuario
(
    id integer NOT NULL DEFAULT nextval('"Sprint 4".usuario_id_seq'::regclass),
    email character varying COLLATE pg_catalog."default",
    activo boolean,
    CONSTRAINT usuario_pkey PRIMARY KEY (id),
    CONSTRAINT email_unique UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Sprint 4".usuario
    OWNER to postgres;

/*      Insertar prioridades, alta, media, baja
 */
INSERT INTO "Sprint 4".prioridad(
	id, nombre, descripcion)
	VALUES (1, 'alta', 'alta');

    INSERT INTO "Sprint 4".prioridad(
	id, nombre, descripcion)
	VALUES (2, 'media', 'media');

    INSERT INTO "Sprint 4".prioridad(
	id, nombre, descripcion)
	VALUES (3, 'baja', 'baja');

/* Insertar usuarios
 */
 INSERT INTO "Sprint 4".usuario(
	id, email, activo)
	VALUES (1, 'hello@hello', true);

    INSERT INTO "Sprint 4".usuario(
	id, email, activo)
	VALUES (2, 'ciao@ciao', false);

    INSERT INTO "Sprint 4".usuario(
	id, email, activo)
	VALUES (3, 'adieu@adieu', true);

/*     Insertar tareas
 */

 INSERT INTO "Sprint 4".tareas(
	id, titulo, prioridad_id, usuario_id, completado)
	VALUES (1, 'tomar agua', 1, 1, true);

    INSERT INTO "Sprint 4".tareas(
	id, titulo, prioridad_id, usuario_id, completado)
	VALUES (2, 'hacer pichi', 2, 2, false);

    INSERT INTO "Sprint 4".tareas(
	id, titulo, prioridad_id, usuario_id, completado)
	VALUES (3, 'dormir la siesta', 3, 3, false);

/*     Obtener todas las tareas
 */

select * from "Sprint 4".tareas

/* Obtener todas las tareas por usuario */

select * from "Sprint 4".tareas
inner join "Sprint 4".usuario on usuario.id = tareas.usuario_id

/* Obtener todas las tareas que sean de un usuario y estén pendiente
 */
select * from "Sprint 4".tareas
inner join "Sprint 4".usuario on usuario.id = tareas.usuario_id
where usuario_id = 2 
and completado = false

 /* Borrar una tarea */

 DELETE FROM "Sprint 4".tareas
	WHERE id = 2;

/*     Insertar un email repetido, ¿qué pasa?, ¿por qué?
 */
 INSERT INTO "Sprint 4".usuario(
	id, email, activo)
	VALUES (4, 'hello@hello', true);

    ERROR:  duplicate key value violates unique constraint "email_unique"
DETAIL:  Key (email)=(hello@hello) already exists.
SQL state: 23505

/* Intentar eliminar una prioridad que está siendo referenciada en una tarea,
 ¿es posible?, ¿por qué?, ¿qué significa la eliminación en cascada? */

DELETE FROM "Sprint 4".prioridad
	WHERE id = 1;

    Si, se puede pq no pusimos FK.

/*     ● Actualizar la tarea con el id más reciente de un usuario
 */

 UPDATE "Sprint 4".tareas
	SET id=3, titulo='cocinar ravioles', prioridad_id=1, usuario_id=3, completado=false
	WHERE id=3;

