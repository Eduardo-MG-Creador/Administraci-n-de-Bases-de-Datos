SELECT * FROM cliente;
SELECT * FROM factura;
SELECT * FROM detalle;
SELECT * FROM producto;
SELECT * FROM categoria;
SELECT * FROM Empleados;
SELECT * FROM Sucursales;




SELECT DISTINCT 
    c.id_cliente, 
    CAST(c.nombre AS VARCHAR(100)) AS nombre, 
    CAST(c.apellido AS VARCHAR(100)) AS apellido, 
    CAST(c.email AS VARCHAR(150)) AS email, 
    f.fecha
FROM dbo.cliente c
INNER JOIN dbo.factura f ON c.id_cliente = f.id_cliente
WHERE YEAR(f.fecha) = 2021;
GO


 
 SELECT DISTINCT 
    c.id_cliente, 
    CAST(c.nombre AS VARCHAR(100)) AS nombre, 
    CAST(c.apellido AS VARCHAR(100)) AS apellido, 
    CAST(c.email AS VARCHAR(150)) AS email, 
    f.fecha
FROM dbo.cliente c
 INNER JOIN dbo.factura f ON c.id_cliente = f.id_cliente
WHERE YEAR(f.fecha) = 2022;
GO


 SELECT DISTINCT 
    c.id_cliente, 
    CAST(c.nombre AS VARCHAR(100)) AS nombre, 
   CAST(c.apellido AS VARCHAR(100)) AS apellido, 
    CAST(c.email AS VARCHAR(150)) AS email, 
   f.fecha
 FROM dbo.cliente c
INNER JOIN dbo.factura f ON c.id_cliente = f.id_cliente
WHERE YEAR(f.fecha) = 2021 AND MONTH(f.fecha) = 12;
GO


SELECT 
    CONCAT(CAST(c.nombre AS VARCHAR(100)), ' ', CAST(c.apellido AS VARCHAR(100))) AS Cliente,
    f.id_factura,
    f.fecha,
    CAST(p.nombre AS VARCHAR(100)) AS Producto,
    d.cantidad,
    d.precio AS PrecioTotalDetalle
FROM dbo.cliente c
INNER JOIN dbo.factura f ON c.id_cliente = f.id_cliente
INNER JOIN dbo.detalle d ON f.id_detalle = d.id_detalle
INNER JOIN dbo.producto p ON d.id_producto = p.id_producto
WHERE (CAST(c.nombre AS VARCHAR(100)) LIKE 'Valentina Anastasia' AND CAST(c.apellido AS VARCHAR(100)) LIKE 'Huerta Corral')
   OR (CAST(c.nombre AS VARCHAR(100)) LIKE 'Zayra Manuela' AND CAST(c.apellido AS VARCHAR(100)) LIKE 'Gómez López')
   OR (CAST(c.nombre AS VARCHAR(100)) LIKE 'Dante Eduardo' AND CAST(c.apellido AS VARCHAR(100)) LIKE 'Dolores Meza')
   OR (CAST(c.nombre AS VARCHAR(100)) LIKE 'Ana Maribel' AND CAST(c.apellido AS VARCHAR(100)) LIKE 'Cedillo Núñez')
   OR (CAST(c.nombre AS VARCHAR(100)) LIKE 'Rodrigo Ismael' AND CAST(c.apellido AS VARCHAR(100)) LIKE 'Silva Ugarte')
ORDER BY Cliente, f.fecha;
GO


SELECT TOP 1 
  p.id_producto, 
   CAST(p.nombre AS VARCHAR(100)) AS Producto, 
    SUM(d.cantidad) AS TotalUnidadesVendidas
 FROM dbo.detalle d
INNER JOIN dbo.producto p ON d.id_producto = p.id_producto
 GROUP BY p.id_producto, CAST(p.nombre AS VARCHAR(100))
ORDER BY TotalUnidadesVendidas DESC;
GO


 SELECT TOP 1 
  id_producto, 
   CAST(nombre AS VARCHAR(100)) AS Producto, 
    stock
  FROM dbo.producto
 ORDER BY stock DESC;
GO



  SELECT 
  f.id_factura, 
   f.fecha, 
   CONCAT(CAST(c.nombre AS VARCHAR(100)), ' ', CAST(c.apellido AS VARCHAR(100))) AS Cliente,
    CAST(p.nombre AS VARCHAR(100)) AS Producto,
   d.cantidad,
    d.precio
 FROM dbo.factura f
INNER JOIN dbo.cliente c ON f.id_cliente = c.id_cliente
 INNER JOIN dbo.detalle d ON f.id_detalle = d.id_detalle
INNER JOIN dbo.producto p ON d.id_producto = p.id_producto
ORDER BY f.fecha ASC;
GO


SELECT 
   id_cliente, 
  CAST(nombre AS VARCHAR(100)) AS nombre, 
   CAST(apellido AS VARCHAR(100)) AS apellido, 
  telefono, 
  CAST(email AS VARCHAR(150)) AS email
 FROM dbo.cliente
  ORDER BY CAST(nombre AS VARCHAR(100)) ASC, CAST(apellido AS VARCHAR(100)) ASC;
GO



 SELECT 
   CAST(cat.nombre AS VARCHAR(100)) AS Categoria,
    p.id_producto,
  CAST(p.nombre AS VARCHAR(100)) AS Producto,
   p.precio,
    p.stock
 FROM dbo.producto p
INNER JOIN dbo.categoria cat ON p.id_categoria = cat.id_categoria
 WHERE CAST(cat.nombre AS VARCHAR(100)) IN ('Falda', 'Pantalón', 'Chamarra', 'Zapato', 'Accesorios')
ORDER BY Categoria, Producto;
GO




ALTER TABLE dbo.Empleados 
ADD puesto VARCHAR(50);

ALTER TABLE dbo.Empleados 
ADD apellido VARCHAR(100);

UPDATE dbo.Empleados 
SET puesto = 'Encargado' 
WHERE id_empleado = 1;




SELECT 
  s.nombre_sucursal AS Sucursal,
 e.id_empleado AS Id_Encargado,
 e.nombre AS NombreEncargado,
  e.telefono,
  e.email
 FROM dbo.Sucursales s
INNER JOIN dbo.Empleados e ON s.id_encargado = e.id_empleado;
GO


SELECT 
  s.nombre_sucursal AS Sucursal,
   e.id_empleado,
   e.nombre,
   e.telefono,
   e.email
 FROM dbo.Empleados e
INNER JOIN dbo.Sucursales s ON e.id_sucursal = s.id_sucursal
  WHERE s.nombre_sucursal = 'Akira''s Boutique: Constitución';
GO



SELECT id_sucursal, nombre_sucursal FROM dbo.Sucursales;



SELECT 
  id_cliente,
   CAST(nombre AS VARCHAR(100)) AS nombre,
   CAST(apellido AS VARCHAR(100)) AS apellido,
    fec_nac,
   DATEDIFF(YEAR, fec_nac, GETDATE()) - 
     CASE 
        WHEN DATEADD(YEAR, DATEDIFF(YEAR, fec_nac, GETDATE()), fec_nac) > GETDATE() THEN 1 
          ELSE 0 
       END AS Edad
FROM dbo.cliente
WHERE DATEDIFF(YEAR, fec_nac, GETDATE()) - 
      CASE 
       WHEN DATEADD(YEAR, DATEDIFF(YEAR, fec_nac, GETDATE()), fec_nac) > GETDATE() THEN 1 
       ELSE 0 
      END > 30
ORDER BY Edad DESC;
GO