#Listado de todos los productos de merchandising
SELECT nombre, precio 
FROM productos 
WHERE stock = TRUE 
ORDER BY precio DESC

#Buscar un usuario por su correo electrónico
SELECT nombre, apellido1, telefono, correo
FROM usuarios 
WHERE correo LIKE 'ad%'

#Ver qué PC está usando cada usuario en sus sesiones actuales
SELECT u.nombre, u.apellido1, s.hora_inicio, p.numero_pc
FROM usuarios u
JOIN sesion s ON u.usuario_id = s.usuario_id
JOIN PC p ON s.pc_id = p.pc_id;

#Jugadores junto con el nombre del equipo de eSports al que pertenecen.
SELECT j.nombre, j.apellido1, e.nombre AS nombre_equipo
FROM jugadores j
JOIN equipos e ON j.equipo_id = e.equipo_id;

#Calcular cuánto dinero ha gastado cada usuario en total entre todos sus pedidos
SELECT u.nombre, SUM(p.precio) AS total_gastado
FROM usuarios u
JOIN pedido p ON u.usuario_id = p.usuario_id
GROUP BY u.usuario_id, u.nombre
HAVING SUM(p.precio) > 50; 

#Saber cuántos PCs hay en cada estado
SELECT ep.tipo, COUNT(p.pc_id) AS cantidad_pcs
FROM estado_pc ep
LEFT JOIN PC p ON ep.estadopc_id = p.estadopc_id
GROUP BY ep.tipo;

#Obtener los detalles de un pedido específico, incluyendo el nombre del producto.
SELECT pr.nombre, dp.cantidad, dp.precio_unitario, (dp.cantidad * dp.precio_unitario) AS subtotal
FROM detalle_pedido dp
JOIN productos pr ON dp.producto_id = pr.producto_id
WHERE dp.pedido_id = 1;

#Encontrar usuarios que NUNCA han realizado un pedido
SELECT nombre, correo 
FROM usuarios 
WHERE usuario_id NOT IN (SELECT usuario_id FROM pedido);
