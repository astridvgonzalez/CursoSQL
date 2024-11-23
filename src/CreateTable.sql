-- crear tablas
CREATE TABLE Afiliados (
  Id_Afil INT PRIMARY KEY IDENTITY(1,1),
  Tipo_Documento NVARCHAR(2) NOT NULL,
  Numero_Documento INT NOT NULL
);
 
CREATE TABLE Datos_Contacto(
  Id_Afil INT PRIMARY KEY IDENTITY(1,1),
  Direccion NVARCHAR(60) NOT NULL,
  Telefono NVARCHAR(13) NOT NULL,
);
 
CREATE TABLE Cargados_BDUA (
  Id_BDUA INT PRIMARY KEY IDENTITY(1,1),
  Tipo_Documento NVARCHAR(2) NOT NULL,
  Numero_Documento INT NOT NULL,
  Cod_Estado INT NOT NULL,
);
 
CREATE TABLE Estados(
  Cod_Estado INT PRIMARY KEY IDENTITY(1,1),
  Estado NVARCHAR(50) NOT NULL
);
 