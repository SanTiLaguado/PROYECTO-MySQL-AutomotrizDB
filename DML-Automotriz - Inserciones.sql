# DML-Automotriz - INSERCION DE DATOS

USE automotriz;

INSERT INTO ciudad (nombre) VALUES 
('Bucaramanga'), 
('Medellin'), 
('Bogota DC');

INSERT INTO region (nombre) VALUES 
('Santander'), 
('Antioquia'), 
('Bogota DC');

INSERT INTO pais (nombre) VALUES 
('Colombia');

INSERT INTO tipo_telefono (tipo) VALUES 
('Móvil'), 
('Fijo'), 
('Fax');

INSERT INTO cliente (nombre, apellido, email) VALUES 
('Juan', 'Pérez', 'juan.perez@example.com'), 
('Ana', 'Gómez', 'ana.gomez@example.com'), 
('Luis', 'Martínez', 'luis.martinez@example.com'),
('Maria Fernanda', 'Araque', 'mafe.araque@example.com');

INSERT INTO marca (nombre) VALUES 
('Toyota'), 
('Honda'), 
('Ford');

INSERT INTO servicio (nombre, descripcion, costo) VALUES 
('Cambio de aceite', 'Cambio de aceite del motor', 30.00), 
('Alineación', 'Alineación de ruedas', 50.00), 
('Revisión de frenos', 'Inspección y ajuste de frenos', 40.00),
('Cambio de frenos', 'Cambio de frenos de disco', 50.00),  -- Nuevo servicio
('Cambio de filtro de aceite', 'Cambio de filtro de aceite para motor', 20.00),  -- Nuevo servicio
('Cambio de bujía', 'Cambio de bujías de encendido', 10.00);  -- Nuevo servicio

INSERT INTO cargo (puesto) VALUES 
('Mecánico'), 
('Supervisor'), 
('Administrador');

INSERT INTO contacto (nombre, apellido, email) VALUES 
('Carlos', 'Gómez', 'carlos.gomez@example.com'), 
('Marta', 'López', 'marta.lopez@example.com'), 
('Pedro', 'Sánchez', 'pedro.sanchez@example.com');

INSERT INTO ubicacion (nombre , direccion) VALUES 
('Almacén Central', 'Calle 15 Carrera Central A'), 
('Sucursal Norte', 'Calle 75 Carretera NORTE'), 
('Sucursal Sur', 'Calle 23 Carrera 12 Sur');

INSERT INTO inventario (stock_actual, stock_inicial, ubicacion_id) VALUES 
(175, 500, 1), 
(48, 500, 2), 
(32, 500, 3);

INSERT INTO pieza (nombre, descripcion, inventario_id) VALUES 
('Filtro de aceite', 'Filtro de aceite para motor', 1), 
('Bujía', 'Bujía para encendido', 2), 
('Pastilla de freno', 'Pastilla de freno para autos', 3);

INSERT INTO direccion_cliente (cliente_id, pais_id, region_id, ciudad_id, detalle) VALUES 
(1, 1, 1, 1, 'Calle Falsa 123'), 
(2, 1, 2, 2, 'Avenida Siempre Viva 456'), 
(3, 1, 3, 3, 'Boulevard de los Sueños Rotos 789');

INSERT INTO telefono_cliente (cliente_id, tipo_id, numero) VALUES 
(1, 1, '555-1234'), 
(2, 2, '316-5678'), 
(3, 1, '555-9101');

INSERT INTO vehiculo (placa, marca_id, modelo, año_fabricacion, kilometraje, cliente_id) VALUES 
('ABC123', 1, 'Corolla', '2020', 39841, 1), 
('DEF456', 2, 'Civic', '2019', 68432, 2), 
('GHI789', 3, 'Focus', '2018', 98340, 3),
('OWJ20G', 2, 'CB-190', '2024', 5300, 4);

INSERT INTO empleado (nombre, apellido, cargo_id, email) VALUES 
('Pedro', 'Martínez', 1, 'pedro.martinez@example.com'), 
('Lucía', 'Hernández', 2, 'lucia.hernandez@example.com'), 
('José', 'Fernández', 3, 'jose.fernandez@example.com');

INSERT INTO telefono_empleado (empleado_id, tipo_id, numero) VALUES 
(1, 1, '555-5678'), 
(2, 2, '555-8765'), 
(3, 3, '555-2345');

INSERT INTO reparacion (fecha, empleado_id, vehiculo_id, duracion, costo_total, descripcion) VALUES 
('2023-01-15', 1, 1, 3, 200.00, 'Revisión general'), 
('2023-02-20', 2, 2, 4,300.00, 'Cambio de frenos'), 
('2023-03-10', 3, 3, 2,150.00, 'Cambio de aceite'),
('2024-05-20', 1, 1, 3, 220.00, 'Cambio de filtro de aceite'), 
('2024-05-21', 2, 2, 2, 100.00, 'Cambio de bujías');

INSERT INTO reparacion_servicio (reparacion_id, servicio_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3),
(4, 5), 
(5, 6);


INSERT INTO proveedor (nombre, contacto_id, email) VALUES 
('Proveedor1', 1, 'proveedor1@example.com'), 
('Proveedor2', 2, 'proveedor2@example.com'), 
('Proveedor3', 3, 'proveedor3@example.com');

INSERT INTO telefono_proveedor (proveedor_id, tipo_id, numero) VALUES 
(1, 1, '555-8765'), 
(2, 2, '555-4321'), 
(3, 3, '555-6789');

INSERT INTO precio (proveedor_id, pieza_id, precio_venta, precio_proveedor) VALUES 
(1, 1, 50.00, 25.00), 
(2, 2, 40.00, 20.00), 
(3, 3, 30.00, 15.00);

INSERT INTO reparacion_piezas (reparacion_id, pieza_id, cantidad) VALUES 
(1, 1, 1), 
(2, 2, 2), 
(3, 3, 3),
(4, 1, 1),
(5, 2, 4);

INSERT INTO cita (fecha_hora, cliente_id, vehiculo_id) VALUES 
('2023-01-10 10:00:00', 1, 1), 
('2023-02-15 11:00:00', 2, 2),
('2023-02-25 10:00:00', 1, 1), 
('2023-03-20 12:00:00', 3, 3),
('2024-05-20 10:00:00', 1, 1),
('2024-05-21 11:00:00', 2, 2);


INSERT INTO cita_servicio (cita_id, servicio_id) VALUES 
(1, 1), 
(2, 2), 
(3, 2),
(4, 3),
(5, 5),
(6, 6);


INSERT INTO orden_compra (fecha, proveedor_id, empleado_id, total) VALUES 
('2023-01-01', 1, 1, 500.00), 
('2023-02-02', 2, 2, 600.00), 
('2023-03-03', 3, 3, 700.00);


INSERT INTO orden_detalle (orden_id, pieza_id, cantidad) VALUES 
(1, 1, 10), 
(2, 2, 20), 
(3, 3, 30);

INSERT INTO factura (fecha, cliente_id, total) VALUES 
('2023-01-16', 1, 200.00), 
('2023-02-17', 2, 300.00), 
('2023-03-18', 3, 400.00),
('2024-05-20', 1, 220.00),
('2024-05-21', 2, 100.00);

INSERT INTO pago (fecha, cliente_id, factura_id, total) VALUES 
('2023-01-17', 1, 1, 200.00), 
('2023-02-18', 2, 2, 300.00), 
('2023-03-19', 3, 3, 400.00),
('2024-05-21', 1, 4, 220.00),
('2024-05-22', 2, 5, 100.00);

INSERT INTO detalle_factura (factura_id, reparacion_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 200.00), 
(2, 2, 1, 300.00), 
(3, 3, 1, 400.00),
(4, 4, 1, 220.00),
(5, 5, 1, 100.00);







