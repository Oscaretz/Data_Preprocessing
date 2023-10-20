--Corregimos los caracteres invalidos (tildes) de la columna NOM_ENT y COMPLEJIDA:
UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'México'
WHERE NOM_ENT LIKE 'M%xico'
SELECT * FROM INE_DISTRITO_2020
WHERE NOM_ENT = 'Yucatán'
SELECT DISTINCT NOM_ENT FROM INE_DISTRITO_2020
SELECT DISTINCT COMPLEJIDA FROM INE_DISTRITO_2020


SELECT * FROM INE_DISTRITO_2020
UPDATE INE_DISTRITO_2020
SET COMPLEJIDA = 'Concentración Media'
WHERE COMPLEJIDA LIKE 'Concentraci%'
SELECT NOM_ENT FROM INE_DISTRITO_2020

--===========================================================================================
Altamente Concentrado 1 *
Altamente Concentrado 2 * 
Concentración Media *
Concentrado 1 *
Concentrado 2 *
Disperso 1 *
Disperso 2 *
Muy Disperso 1 *
Muy Disperso 2 *


---Insertamos nuevas columnas para Categorical Data:

	--COMPLEJIDA:
ALTER TABLE dbo.INE_DISTRITO_2020
ADD Alt_Con1 INT, Alt_Con2 int, Alt_Con3 int,Alt_Con4 int, Alt_Con5 int, Alt_Con6 int, Alt_Con7 int, Alt_Con8 int, Alt_Con9 int;
	
	--INDIGENA:
ALTER TABLE dbo.INE_DISTRITO_2020
ADD Indig_1 INT;
--====================================================================================================
------ Creamos los valores Dummy de toda la columna COMPLEJIDA en las columnas Alt_Con[1-9]:

UPDATE INE_DISTRITO_2020
SET
    Alt_Con3 = CASE 
        WHEN COMPLEJIDA = 'Concentración Media' THEN '1' --Regresamos 1 si es verdadera la condicion
        ELSE '0' --Regresamos 0 si es falso
	END;

------ Creamos los valores Dummy de toda la columna INDIGENA en las columnas Indig_1 (SI-NO):

UPDATE INE_DISTRITO_2020
SET
    Indig_1 = CASE 
        WHEN INDIGENA = 'SI' THEN '1' --Regresamos 1 si es verdadera la condicion
        ELSE '0' --Regresamos 0 si es falso
	END;

SELECT Indig_1 FROM INE_DISTRITO_2020 --Imprimimos tabla para comprobar resultados

