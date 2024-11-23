-- union queries
SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil
UNION
SELECT e.Estado
FROM Estados e
INNER JOIN Cargados_BDUA c
on e.Cod_Estado = dc.Cod_Estado;
 
-- intersepcion de queries DOS CONSULTAS
SELECT e.Estado
FROM Estados e
INNER JOIN Cargados_BDUA c
on e.Cod_Estado = dc.Cod_Estado
INTERSECT
SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil;

SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil
INTERSECT
SELECT c.Id_BDUA
FROM Cargados_BDUA c
INNER JOIN Afiliados a
on c.Tipo_Documento = a.Tipo_Documento AND c.Numero_Documento = a.Numero_Documento;

-- EXCEPT QUERYS DOS CONSULTAS
SELECT e.Estado
FROM Estados e
INNER JOIN Cargados_BDUA c
on e.Cod_Estado = dc.Cod_Estado
EXCEPT
SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil;

SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil
EXCEPT
SELECT c.Id_BDUA
FROM Cargados_BDUA c
INNER JOIN Afiliados a
on c.Tipo_Documento = a.Tipo_Documento AND c.Numero_Documento = a.Numero_Documento;