-- Procedimiento Almacenado
CREATE procedure ObtenerAfiliados 

AS
BEGIN

SELECT a.Tipo_Documento, a.Numero_Documento
FROM Afiliados a
INNER JOIN Datos_Contacto d
on a.Id_Afil = d.Id_Afil
UNION
SELECT c.Id_BDUA
FROM Cargados_BDUA c
INNER JOIN Afiliados a
on c.Tipo_Documento = a.Tipo_Documento AND c.Numero_Documento = a.Numero_Documento;

END;