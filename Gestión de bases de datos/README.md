Este repositorio contiene el diseño y la implementación de la base de datos para un sistema integral de gestión de un Cybercafé. El proyecto abarca desde el control de hardware y sesiones de usuario hasta la gestión de un equipo profesional de eSports y la venta de merchandising.


El sistema permite:

  - Gestión de Inventario IT: Control de PCs y sus estados.

  - Control de Usuarios: Registro de clientes y asignación de roles.

  - Monetización: Alquiler de equipos por tiempo y venta de productos.

  - Estructura Competitiva: Gestión de jugadores y equipos de eSports asociados al establecimiento.


  BLOQUES PRINCIPALES

  A. Infraestructura y Configuración
  
    estado_pc: Define si un equipo está operativo, en mantenimiento o fuera de servicio.
    estado_pedido: Traza el ciclo de vida de una compra (pendiente, pagado, cancelado).
    rol: Gestiona los niveles de acceso (Admin, Cliente, Staff).
    metodo_pago: Tipos de pago aceptados (Efectivo, Tarjeta, Bizum).

  B. Gestión de Usuarios y Competición
  
    usuarios: Tabla central que almacena la información personal y vincula al usuario con un rol y su perfil de jugador.
    jugadores: Datos específicos para los miembros del equipo de eSports.
    equipos: Información sobre los diferentes rosters del club.

  C. Actividad y Operaciones
  
    sesion: Registra el uso de un PC por parte de un usuario, calculando tiempos y costes.
    productos: Catálogo de artículos de merchandising y consumo.
    pedido y detalle_pedido: Cabecera y líneas de detalle de las ventas realizadas.
  

  DIAGRAMA DE RELACIONES
 
El diseño sigue una estructura relacional normalizada para asegurar la integridad de los datos.
Relación Usuario-Jugador: Un usuario puede ser registrado como jugador profesional del club.
Relación Sesión-PC: Cada sesión de juego queda vinculada a un PC específico para control de disponibilidad.
Ventas: Los pedidos se desglosan en detalle_pedido para permitir la compra de múltiples productos en una sola transacción.
