ALTER TABLE Empleados
ADD CONSTRAINT FK_Empleados_Sucursales
FOREIGN KEY (id_sucursal)
REFERENCES Sucursales(id_sucursal);
GO

ALTER TABLE Sucursales
ADD CONSTRAINT FK_Sucursales_Encargado
FOREIGN KEY (id_encargado)
REFERENCES Empleados(id_empleado);
GO



