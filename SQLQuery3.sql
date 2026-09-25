USE AkirasBoutiques;
GO

INSERT INTO Empleados
(id_empleado, nombre, direccion, telefono, edad, id_sucursal, email, contrasena)
VALUES

-- Sucursal 1: Las Mercedes
(1, 'Sonia Alejandra Fernández Moreno', 'Calle Roble #507', '4447831225', 38, 1, 'sonia@akiras.com', 'Sonia123'),
(2, 'Laura Méndez Torres', 'Calle Olivo #102', '4447831226', 29, 1, 'laura@akiras.com', 'Laura123'),
(3, 'Carlos Ramírez López', 'Calle Pino #203', '4447831227', 31, 1, 'carlos@akiras.com', 'Carlos123'),
(4, 'Mariana González Ruiz', 'Calle Cedro #304', '4447831228', 26, 1, 'mariana@akiras.com', 'Mariana123'),
(5, 'Jorge Hernández Soto', 'Calle Encino #405', '4447831229', 34, 1, 'jorge@akiras.com', 'Jorge123'),
(6, 'Adriana Castillo Moreno', 'Calle Reforma #101', '4445000001', 29, 1, 'adriana@akiras.com', 'Adriana123'),

-- Sucursal 2: Obraje
(7, 'Fernando Calderón Ayala', 'Calle Obraje #101', '4493780921', 42, 2, 'fernando@akiras.com', 'Fernando123'),
(8, 'Patricia López García', 'Calle Centro #202', '4493780922', 30, 2, 'patricia@akiras.com', 'Patricia123'),
(9, 'Miguel Ángel Torres Díaz', 'Calle Hidalgo #303', '4493780923', 28, 2, 'miguel@akiras.com', 'Miguel123'),
(10, 'Andrea Martínez Flores', 'Calle Juárez #404', '4493780924', 25, 2, 'andrea@akiras.com', 'Andrea123'),
(11, 'Ricardo Sánchez Moreno', 'Calle Morelos #505', '4493780925', 36, 2, 'ricardo@akiras.com', 'Ricardo123'),
(12, 'Óscar Ramírez Vega', 'Calle Independencia #202', '4495000002', 32, 2, 'oscar@akiras.com', 'Oscar123'),

-- Sucursal 3: Galerías Mazatlán
(13, 'Daniela Fernanda Díaz Ordaz', 'Av. Marina #101', '6692932059', 35, 3, 'daniela@akiras.com', 'Daniela123'),
(14, 'Alejandro Ruiz Castro', 'Calle Pacífico #202', '6692932060', 29, 3, 'alejandro@akiras.com', 'Alejandro123'),
(15, 'Gabriela Torres Silva', 'Calle Mazatlán #303', '6692932061', 27, 3, 'gabriela@akiras.com', 'Gabriela123'),
(16, 'José Manuel Flores Díaz', 'Calle Marina #404', '6692932062', 33, 3, 'jose@akiras.com', 'Jose123'),
(17, 'Karla Mendoza Ruiz', 'Calle Sinaloa #505', '6692932063', 24, 3, 'karla@akiras.com', 'Karla123'),
(18, 'Natalia Flores Campos', 'Calle Constitución #303', '6695000003', 27, 3, 'natalia@akiras.com', 'Natalia123'),

-- Sucursal 4: Zapopan
(19, 'Mario Alberto Jiménez Salcido', 'Av. Clouthier #101', '3337841230', 40, 4, 'mario@akiras.com', 'Mario123'),
(20, 'Fernanda López Sánchez', 'Calle Benito Juárez #202', '3337841231', 28, 4, 'fernanda@akiras.com', 'Fernanda123'),
(21, 'Diego Ramírez Ortega', 'Calle Zapopan #303', '3337841232', 32, 4, 'diego@akiras.com', 'Diego123'),
(22, 'Valeria Hernández Cruz', 'Calle Jalisco #404', '3337841233', 26, 4, 'valeria@akiras.com', 'Valeria123'),
(23, 'Luis Enrique García Soto', 'Calle Hidalgo #505', '3337841234', 37, 4, 'luis@akiras.com', 'Luis123'),
(24, 'Iván Torres Mendoza', 'Calle Juárez #404', '3335000004', 35, 4, 'ivan@akiras.com', 'Ivan123'),

-- Sucursal 5: Melchor
(25, 'Yesenia Guadalupe Campos Rojo', 'Av. Melchor Ocampo #101', '6143906721', 39, 5, 'yesenia@akiras.com', 'Yesenia123'),
(26, 'Ana Sofía Martínez Díaz', 'Calle Chihuahua #202', '6143906722', 27, 5, 'ana@akiras.com', 'Ana123'),
(27, 'Roberto Sánchez Flores', 'Calle Centro #303', '6143906723', 35, 5, 'roberto@akiras.com', 'Roberto123'),
(28, 'Claudia Torres López', 'Calle Juárez #404', '6143906724', 30, 5, 'claudia@akiras.com', 'Claudia123'),
(29, 'Erick Mendoza García', 'Calle Morelos #505', '6143906725', 28, 5, 'erick@akiras.com', 'Erick123'),
(30, 'Regina Sánchez López', 'Calle Centro #505', '6145000005', 30, 5, 'regina@akiras.com', 'Regina123'),

-- Sucursal 6: Constitución
(31, 'Tamara Alejandra Bernal Ramos', 'Calle Constitución #101', '6181962954', 41, 6, 'tamara@akiras.com', 'Tamara123'),
(32, 'Mónica Hernández Ruiz', 'Calle Durango #202', '6181962955', 29, 6, 'monica@akiras.com', 'Monica123'),
(33, 'Alberto García Torres', 'Calle Centro #303', '6181962956', 33, 6, 'alberto@akiras.com', 'Alberto123'),
(34, 'Paola Martínez Sánchez', 'Calle Victoria #404', '6181962957', 25, 6, 'paola@akiras.com', 'Paola123'),
(35, 'Héctor Ramírez Díaz', 'Calle Hidalgo #505', '6181962958', 38, 6, 'hector@akiras.com', 'Hector123'),

-- Sucursal 7: Centro
(36, 'Samuel Enrique Barrios Enciso', 'Av. Hidalgo #101', '4929301250', 43, 7, 'samuel@akiras.com', 'Samuel123'),
(37, 'Diana González Flores', 'Calle Zacatecas #202', '4929301251', 28, 7, 'diana@akiras.com', 'Diana123'),
(38, 'Marco Antonio López Ruiz', 'Calle Centro #303', '4929301252', 34, 7, 'marco@akiras.com', 'Marco123'),
(39, 'Sofía Hernández Torres', 'Calle Hidalgo #404', '4929301253', 26, 7, 'sofia@akiras.com', 'Sofia123'),
(40, 'Enrique Martínez Soto', 'Calle Juárez #505', '4929301254', 31, 7, 'enrique@akiras.com', 'Enrique123');

GO