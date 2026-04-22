INSERT INTO estado_pedido (tipo, descripcion) VALUES
('Pendiente','Pedido recibido y en espera'),
('Procesando','En preparación'),
('Enviado','En camino'),
('Entregado','Entregado al cliente'),
('Cancelado','Pedido cancelado'),
('Rechazado','No aceptado'),
('Devuelto','Devuelto por el cliente'),
('Retrasado','Entrega con retraso'),
('Pagado','Pago confirmado'),
('Archivado','Histórico del sistema');

INSERT INTO estado_pc (tipo, descripcion) VALUES
('Disponible','PC libre'),
('Ocupado','En uso'),
('Fuera de servicio','No operativo')

INSERT INTO metodo_pago (tipo, descripcion) VALUES
('Efectivo','Pago en metálico'),
('Tarjeta','Pago con tarjeta bancaria'),
('PayPal','Pago digital'),
('Bizum','Transferencia móvil')

INSERT INTO equipos (nombre, descripcion) VALUES
('Dragons','Equipo competitivo A'),
('Titans','Equipo competitivo B')

INSERT INTO rol (tipo, descripcion) VALUES
('Admin','Control total del sistema'),
('Usuario','Cliente estándar'),
('Jugador','Participante en el club'),
('Staff','Empleado del local'),
('Soporte','Asistencia técnica'),
('VIP','Usuario premium'),
('Tester','Pruebas del sistema')

INSERT INTO productos (nombre, stock, precio) VALUES
('Teclado Gaming', TRUE, 59.99),
('Ratón Gaming', TRUE, 39.99),
('Auriculares', TRUE, 89.99),
('Monitor 144Hz', TRUE, 199.99),
('Silla Gaming', TRUE, 149.99),
('Mesa Gaming', TRUE, 129.99),
('Alfombrilla XL', TRUEs, 19.99),
('Mandos', TRUE, 49.99),
('Cable HDMI', TRUE, 9.99),
('USB Hub', TRUE, 24.99)

INSERT INTO usuarios (nombre, apellido1, apellido2, correo, telefono, jugador_id, rol_id) VALUES
('Ana','Lopez','Garcia','ana1@mail.com',611000001,1,2),
('Eva','Martinez','Ruiz','eva2@mail.com',611000002,2,2),
('Laura','Sanchez','Diaz','laura3@mail.com',611000003,3,2),
('Marta','Perez','Lopez','marta4@mail.com',611000004,4,2),
('Sara','Gomez','Ruiz','sara5@mail.com',611000005,5,2),
('Ivan','Diaz','Soto','ivan6@mail.com',611000006,6,2),
('Raul','Hernandez','Gil','raul7@mail.com',611000007,7,2),
('Jorge','Vega','Mora','jorge8@mail.com',611000008,8,2),
('Adrian','Domingo','Lopez','adrian9@mail.com',611000009,9,2),
('Oscar','Ruiz','Perez','oscar10@mail.com',611000010,10,2);

INSERT INTO jugadores (nombre, apellido1, apellido2, correo, telefono, equipo_id) VALUES
('Alex','Gomez','Lopez','alex1@mail.com',600100001,1),
('Luis','Perez','Diaz','luis2@mail.com',600100002,2),
('Mario','Ruiz','Soto','mario3@mail.com',600100003,3),
('Juan','Martinez','Garcia','juan4@mail.com',600100004,4),
('Pedro','Sanchez','Ruiz','pedro5@mail.com',600100005,5),
('Carlos','Diaz','Fernandez','carlos6@mail.com',600100006,6),
('David','Lopez','Mora','david7@mail.com',600100007,7),
('Sergio','Hernandez','Gil','sergio8@mail.com',600100008,8),
('Adrian','Domingo','Perez','adrian9@mail.com',600100009,9),
('Pablo','Vega','Ortiz','pablo10@mail.com',600100010,10)

INSERT INTO PC (numero_pc, especificaciones, estadopc_id) VALUES
(1,'i7 16GB RTX 3060',1),
(2,'i7 16GB RTX 3060',2),
(3,'i5 16GB GTX 1660',3),
(4,'i9 32GB RTX 4070',4),
(5,'i7 16GB RTX 3070',5),
(6,'i5 8GB GTX 1650',6),
(7,'i9 32GB RTX 4080',7),
(8,'Ryzen 7 16GB RX 6700',8),
(9,'Ryzen 5 16GB GTX 1660',9),
(10,'i7 16GB RTX 3060',10);