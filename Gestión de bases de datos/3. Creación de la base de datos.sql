CREATE TABLE estado_pedido(
estadopedido_id SERIAL NOT NULL PRIMARY KEY,
tipo VARCHAR(30),
descripcion TEXT
);

CREATE TABLE estado_pc(
estadopc_id SERIAL NOT NULL PRIMARY KEY,
tipo VARCHAR(30),
descripcion TEXT
);

CREATE TABLE metodo_pago(
metodopago_id SERIAL NOT NULL PRIMARY KEY,
tipo varchar(30),
descripcion text
);

CREATE TABLE equipos(
equipo_id SERIAL NOT NULL PRIMARY KEY,
nombre VARCHAR (50),
descripcion TEXT
);

CREATE TABLE rol(
rol_id SERIAL NOT NULL PRIMARY KEY,
tipo VARCHAR (15),
descripcion TEXT
);

CREATE TABLE jugadores(
jugador_id  SERIAL NOT NULL PRIMARY KEY,
nombre varchar(25) NOT NULL,
apellido1 VARCHAR (25) NOT NULL,
apellido2 VARCHAR (25),
fecha_registro DATE DEFAULT CURRENT_DATE,
correo VARCHAR(40) NOT NULL UNIQUE,
telefono INT NOT NULL UNIQUE,
equipo_id INT NOT NULL,

FOREIGN KEY (equipo_id) REFERENCES equipos(equipo_id)
);

CREATE TABLE usuarios(
usuario_id SERIAL NOT NULL PRIMARY KEY,
nombre VARCHAR (25) NOT NULL,
apellido1 VARCHAR (25) NOT NULL,
apellido2 VARCHAR (25),
correo VARCHAR(40) NOT NULL UNIQUE,
telefono INT NOT NULL UNIQUE,
fecha_registro DATE DEFAULT CURRENT_DATE,
jugador_id INT NOT NULL,
rol_id INT NOT NULL,

FOREIGN KEY (jugador_id) REFERENCES jugadores(jugador_id),
FOREIGN KEY(rol_id) REFERENCES rol(rol_id)
);

CREATE TABLE sesion(
sesion_id SERIAL NOT NULL,
hora_inicio TIME DEFAULT CURRENT_TIME,
hora_fin TIME DEFAULT CURRENT_TIME,
usuario_id INT NOT NULL,
metodopago_id INT NOT NULL,
coste NUMERIC(10,2),

FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (metodopago_id) REFERENCES metodo_pago(metodopago_id)
);

CREATE TABLE pedido(
pedido_id SERIAL NOT NULL PRIMARY KEY,
fecha DATE DEFAULT CURRENT_DATE,
estadopedido_id INT NOT NULL,
precio NUMERIC(10,2),
usuario_id INT NOT NULL,
metodopago_id INT NOT NULL,

FOREIGN KEY (estadopedido_id) REFERENCES estado_pedido(estadopedido_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (metodopago_id) REFERENCES metodo_pago (metodopago_id)
);

CREATE TABLE productos(
producto_id SERIAL NOT NULL PRIMARY KEY,
nombre VARCHAR(50),
stock BOOLEAN DEFAULT TRUE,
precio NUMERIC (10,2)
);

CREATE TABLE detalle_pedido(
detallepedido_id SERIAL NOT NULL,
producto_id INT NOT NULL,
pedido_id INT NOT NULL,
cantidad INT,
precio_unitario NUMERIC (10,2),

FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id)
);

CREATE TABLE PC(
pc_id SERIAL NOT NULL PRIMARY KEY,
numero_pc INT NOT NULL,
especificaciones TEXT,
estadopc_id INT NOT NULL,

FOREIGN KEY (estadopc_id) REFERENCES estado_pc(estadopc_id)
);