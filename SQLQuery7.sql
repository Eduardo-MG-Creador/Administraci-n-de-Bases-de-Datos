SELECT
    id_empleado,
    nombre,
    edad,
    email
FROM Empleados;

SELECT
    e.id_empleado,
    e.nombre AS empleado,
    s.nombre_sucursal AS sucursal,
    s.ciudad,
    s.estado
FROM Empleados e
INNER JOIN Sucursales s
    ON e.id_sucursal = s.id_sucursal;