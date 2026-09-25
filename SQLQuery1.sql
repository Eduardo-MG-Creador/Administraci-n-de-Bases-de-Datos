USE AkirasBoutiques;
GO

CREATE TABLE Empleados
(
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    edad INT NOT NULL,
    id_sucursal INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    contrasena VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Sucursales
(
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(150) NOT NULL,
    id_encargado INT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL
);
GO

