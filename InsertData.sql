-- insertar informacion
INSERT INTO Afiliados (Id, Tipo_Documento, Numero_Documento)
VALUES 
(24185, 'CC', 1052513416),
(54318, 'PT', 4313243),
(54531, 'TI', 1053135243),
(96343, 'RC', 1564313338);
 
INSERT INTO Datos_Contacto (Id_Afil, Direccion, Telefono)
VALUES
(24185, 'calle 34 245', '3112453156'),
(54318, 'calle 54 548', '3225569756'),
(54531, 'calle 5 315', '3105778996'),
(96343, 'calle 22 978', '3132589786');
 
 
INSERT INTO Cargados_BDUA(Id_BDUA, Tipo_Documento, Numero_Documento, Cod_Estado)
VALUES
(123, 'CC', 1052513416, 1),
(124, 'PT', 4313243, 3),
(125, 'TI', 1053135243, 2),
(126, 'RC', 1564313338, 1);
 
INSERT INTO Estados(Cod_Estado, Estado)
VALUES
(1, 'ACTIVO'),
(2, 'SUSPENDIDO'),
(3, 'RETIRADO');