1. Descripción del Proyecto
  Este repositorio contiene la documentación y especificaciones técnicas de la infraestructura de red diseñada para un centro de entretenimiento y entrenamiento de Esports. La solución implementa una red segmentada mediante    VLANs, gestión centralizada de identidades y servicios críticos de red para garantizar alta disponibilidad y seguridad.

2. Topología de Red
  La red utiliza una topología en Estrella con una arquitectura jerárquica de dos capas: Core y Acceso.

3. Infraestructura Física
  Router de Borde: Gestiona la salida a Internet y el filtrado perimetral.
  Switch Core: Ubicado en la Sala de Servidores, centraliza el enrutamiento inter-VLAN y la agregación de enlaces.
  Switches de Acceso: Distribuidos en la Sala General y Sala Esports, conectados al Core mediante enlaces Trunk.
  Punto de Acceso : Proporciona conectividad inalámbrica a la recepción y zonas comunes.


4. Servicios Implementados
El servidor principal 192.168.4.10 centraliza la lógica de la red:

  Active Directory : Gestión centralizada de usuarios y políticas de grupo  para los 23 equipos.
  DNS Interno: Resolución de nombres de dominio local y reenviadores externos.
  DHCP Server: Asignación dinámica de IPs.
  Control Remoto: Acceso administrativo mediante RDP y soporte técnico remoto para los puestos de usuario.

5. Configuración de Enlaces
  Trunking: Los enlaces entre los switches de acceso y el core transportan todas las VLANs etiquetadas.
  Inter-VLAN Routing: Configurado en el Switch Core para permitir que los clientes accedan a los servicios del servidor.
 

