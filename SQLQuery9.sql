SELECT
    s.id_sucursal,
    s.nombre_sucursal AS sucursal,
    e.nombre AS encargado,
    s.ciudad,
    s.estado
FROM Sucursales s
INNER JOIN Empleados e
    ON s.id_encargado = e.id_empleado;


 SELECT
    s.nombre_sucursal AS sucursal,
    COUNT(e.id_empleado) AS cantidad_empleados
FROM Sucursales s
LEFT JOIN Empleados e
    ON s.id_sucursal = e.id_sucursal
GROUP BY
    s.id_sucursal,
    s.nombre_sucursal;