-- primeras consultas (minimo 3 consultas)
SELECT * from Estados;
SELECT * FROM Cargados_BDUA;
SELECT * FROM Datos_Contacto;
SELECT * FROM Afiliados;

-- segunda consulta alias (minimo 3 consultas)
SELECT a.Tipo_Documento, a.Numero_Documento 
FROM Afiliados a;

SELECT e.Estado, 
FROM Estados e;

SELECT d.Direccion, 
FROM Datos_Contacto d;

-- tercera consulta (minimo 2 consultar)
SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil;

SELECT e.Estado
FROM Estados e
INNER JOIN Cargados_BDUA c
on e.Cod_Estado = dc.Cod_Estado;

SELECT c.Id_BDUA
FROM Cargados_BDUA c
INNER JOIN Afiliados a
on c.Tipo_Documento = a.Tipo_Documento AND c.Numero_Documento = a.Numero_Documento;