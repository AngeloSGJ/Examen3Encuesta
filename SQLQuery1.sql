/*Base de datos apra restaurante
tipos de articulños; codigo decripcion
-- DESECHABLE
--comestible
Articulos;codigo,tipo,descripocion,precio fecha
---,, platos plasticos,100,hoy
---2,2 azucar moreno,600,hoy
*/

CREATE DATABASE RESTAURANTEUTCC
GO

USE RestauranteUTCC
GO

CREATE TABLE TIPO
(
	id int identity(1,1),
	descripcion varchar(50) NOT NULL
	CONSTRAINT pk_idtipo PRIMARY KEY(id)
)
GO

CREATE TABLE ARTICULO
(
	id int identity(1,1),
	idtipo int,
	descripcion varchar(50) NOT NULL,
	precio money CONSTRAINT df_precio DEFAULT 0,
	fecha datetime CONSTRAINT df_fecha DEFAULT GETDATE()
	CONSTRAINT pk_idarticulo PRIMARY KEY(id)
	CONSTRAINT pk_idtipo FOREIGN KEY(idtipo) REFERENCES TIPO(id)
)
GO

SELECT GETDATE()

--CREATION DE PROCEDIMIENTOS ALMACENADOS -- STORE PROCEDURES -- PROCEDIMIENTO PARA EJECUTAR CODIGO

INSERT INTO TIPO(descripcion) VALUES ´('Desechable'),('comestibles'),('electronica')

ALTER PROCEDURE CONSULTARTIPO_FILTRO
@CODIGO
	AS
		BEGIN
		SELECT*FROM TIPO WHERE ID=@CODIGO
		END

CREATE PROCEDURE INSERTAR TIPO
@CODIGO
	AS
		BEGIN
		SELECT*FROM TIPO (DESCRIPCION) ID=@DESCRIPCION
		END

EXEC CONSULTARTIPO
EXEC CONSULTARTIPO_FILTRO 3