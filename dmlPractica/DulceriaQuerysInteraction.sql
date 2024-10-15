USE Dulceria;

-- Insertar proveedores
INSERT INTO Proveedores (Proveedor_id, Name, Address, Phone, ChiefName, Discount, IsActive, Last_buy, Next_buy) VALUES
(1, 'Proveedor 1', 'Direccion 1', '1234567890', 'Jefe 1', 10, 1, '2023-01-01', '2023-02-01'),
(2, 'Proveedor 2', 'Direccion 2', '1234567891', 'Jefe 2', 15, 1, '2023-01-02', '2023-02-02'),
(3, 'Proveedor 3', 'Direccion 3', '1234567892', 'Jefe 3', 20, 1, '2023-01-03', '2023-02-03'),
(4, 'Proveedor 4', 'Direccion 4', '1234567893', 'Jefe 4', 25, 1, '2023-01-04', '2023-02-04'),
(5, 'Proveedor 5', 'Direccion 5', '1234567894', 'Jefe 5', 30, 1, '2023-01-05', '2023-02-05'),
(6, 'Proveedor 6', 'Direccion 6', '1234567895', 'Jefe 6', 35, 1, '2023-01-06', '2023-02-06'),
(7, 'Proveedor 7', 'Direccion 7', '1234567896', 'Jefe 7', 40, 1, '2023-01-07', '2023-02-07'),
(8, 'Proveedor 8', 'Direccion 8', '1234567897', 'Jefe 8', 45, 1, '2023-01-08', '2023-02-08'),
(9, 'Proveedor 9', 'Direccion 9', '1234567898', 'Jefe 9', 50, 1, '2023-01-09', '2023-02-09'),
(10, 'Proveedor 10', 'Direccion 10', '1234567899', 'Jefe 10', 55, 1, '2023-01-10', '2023-02-10');

-- Insertar clientes
INSERT INTO Clientes (Cliente_id, Name, Address, RFC, Phone, create_at, update_at) VALUES
(1, 'Cliente 1', 'Calle 1', 'RFC1', 1234567890, NOW(), NOW()),
(2, 'Cliente 2', 'Calle 2', 'RFC2', 1234567891, NOW(), NOW()),
(3, 'Cliente 3', 'Calle 3', 'RFC3', 1234567892, NOW(), NOW()),
(4, 'Cliente 4', 'Calle 4', 'RFC4', 1234567893, NOW(), NOW()),
(5, 'Cliente 5', 'Calle 5', 'RFC5', 1234567894, NOW(), NOW()),
(6, 'Cliente 6', 'Calle 6', 'RFC6', 1234567895, NOW(), NOW()),
(7, 'Cliente 7', 'Calle 7', 'RFC7', 1234567896, NOW(), NOW()),
(8, 'Cliente 8', 'Calle 8', 'RFC8', 1234567897, NOW(), NOW()),
(9, 'Cliente 9', 'Calle 9', 'RFC9', 1234567898, NOW(), NOW()),
(10, 'Cliente 10', 'Calle 10', 'RFC10', 1234567899, NOW(), NOW());

-- Insertar productos
INSERT INTO Productos (Producto_id, Proveedor_id, Name, Description, Precio, UnitCost, last_purchase, create_at) VALUES
(1, 1, 'Chocolates', 'Chocolates de leche', 10.00, 5.00, '2023-01-01', NOW()),
(2, 2, 'Gomitas', 'Gomitas de frutas', 8.00, 4.00, '2023-01-02', NOW()),
(3, 3, 'Paletas', 'Paletas de caramelo', 5.00, 2.50, '2023-01-03', NOW()),
(4, 4, 'Chicles', 'Chicles de menta', 3.00, 1.50, '2023-01-04', NOW()),
(5, 5, 'Caramelos', 'Caramelos surtidos', 7.00, 3.50, '2023-01-05', NOW()),
(6, 6, 'Galletas', 'Galletas de chocolate', 12.00, 6.00, '2023-01-06', NOW()),
(7, 7, 'Refrescos', 'Refrescos de cola', 15.00, 7.50, '2023-01-07', NOW()),
(8, 8, 'Jugos', 'Jugos de naranja', 10.00, 5.00, '2023-01-08', NOW()),
(9, 9, 'Papas fritas', 'Papas fritas con sal', 8.00, 4.00, '2023-01-09', NOW()),
(10, 10, 'Nachos', 'Nachos con queso', 12.00, 6.00, '2023-01-10', NOW()),
(11, 1, 'Platos desechables', 'Platos de plástico', 20.00, 10.00, '2023-01-11', NOW()),
(12, 2, 'Vasos desechables', 'Vasos de plástico', 15.00, 7.50, '2023-01-12', NOW()),
(13, 3, 'Servilletas', 'Servilletas de papel', 5.00, 2.50, '2023-01-13', NOW()),
(14, 4, 'Cubiertos desechables', 'Cubiertos de plástico', 10.00, 5.00, '2023-01-14', NOW()),
(15, 5, 'Bolsas de regalo', 'Bolsas de papel', 8.00, 4.00, '2023-01-15', NOW()),
(16, 6, 'Globos', 'Globos de colores', 5.00, 2.50, '2023-01-16', NOW()),
(17, 7, 'Velas', 'Velas de cumpleaños', 3.00, 1.50, '2023-01-17', NOW()),
(18, 8, 'Confeti', 'Confeti de colores', 4.00, 2.00, '2023-01-18', NOW()),
(19, 9, 'Piñatas', 'Piñatas de personajes', 25.00, 12.50, '2023-01-19', NOW()),
(20, 10, 'Decoraciones', 'Decoraciones para fiestas', 30.00, 15.00, '2023-01-20', NOW());

