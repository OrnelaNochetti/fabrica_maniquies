Sistema de gestion: Fabrica de maniquies
Este proyecto implementa una solución de base de datos relacional para digitalizar el control de stock y producción de una fábrica de maniquíes, eliminando los errores de la gestión manual.

Estructura y funcionamiento de los scripts

1. creates.sql (Definición de la Estructura)
Este archivo crea el "esqueleto" del sistema.

- Tablas Relacionadas: Conecta modelos con maniquies y estos con piezas.
- Lógica de Integridad: Se utilizan FOREIGN KEY para asegurar que no existan maniquíes de modelos inexistentes.
- Tipos de Datos: Se usa el tipo ENUM en la tabla piezas para restringir las entradas únicamente a: Cabeza, Torso, Brazo o Pierna, evitando errores de escritura.

2. inserts.sql (Población de Datos)
Aquí se carga la "realidad" de la fábrica en el sistema.

- Stock de Piezas: Se cargan piezas individuales (con su color y material).
- Importante: Inicialmente, el campo id_maniqui se carga como NULL, lo que indica que la pieza está libre en el depósito.
- Ensamblado: Se registran los maniquíes terminados vinculándolos a un modelo del catálogo.

3. modificaciones.sql (Gestión de Cambios)
Este script demuestra la flexibilidad del sistema mediante la sentencia UPDATE.

- Permite corregir errores
- Se utiliza para asignar piezas sueltas a un maniquí específico una vez que se termina de armar.

4. queries.sql (Reportes e Inteligencia)
Es el archivo que responde a las necesidades del cliente.

- Cálculo de Producción: Mediante COUNT y GROUP BY, el sistema informa cuántas piezas de cada tipo hay disponibles. Si falta una pieza esencial (ej: el Torso), el sistema advierte que no se pueden completar más unidades.
- Trazabilidad: Permite saber exactamente qué piezas (con sus IDs únicos) componen un maniquí específico.

Como probar el proyecto

1. Abrir DBeaver y conectar a la base de datos (MySQL/MariaDB via XAMPP).
2. Ejecutar los archivos en el orden numérico (1 al 4).
3. Revisar la pestaña de Resultados después de ejecutar queries.sql para ver el estado actual de la fábrica.


