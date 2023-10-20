--Corregimos los caracteres invalidos (tildes) para toda la columna NOM_ENT:

UPDATE INE_ENTIDAD_2020
SET NOM_ENT = 'Yucatán'
WHERE NOM_ENT LIKE 'Yucat%'
SELECT * FROM INE_ENTIDAD_2020
SELECT DISTINCT NOM_ENT FROM INE_ENTIDAD_2020

--===========================================================================================


