### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 04**

## **1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas**

### **Respuestas**

1. **Funciones básicas:** Son las que permiten y regulan los aspectos más elementales del funcionamiento del sistema, como la gestión de procesos, la gestión de la memoria, la gestión de los dispositivos de entrada y salida, la gestión de archivos y la comunicación entre procesos.

2. **Funciones adicionales:** Son las que ofrecen al usuario una interfaz gráfica o una línea de comandos para interactuar con el sistema, así como otras aplicaciones y utilidades que facilitan el uso del sistema operativo.

## **2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.**

### **Respuestas**

1. **Interfaz gráfica**
2. **Interfaz de línea de comandos**
3. **Gestión de memoria**
4. **Gestión de procesos**
5. **Gestión de archivos**

## **3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.**

### **Respuestas**
Una forma es utilizar herramientas de monitoreo del sistema operativo para recopilar información sobre el uso de recursos durante la ejecución del programa. Por ejemplo, en Windows se puede utilizar el Monitor de rendimiento para recopilar datos sobre el uso de CPU, memoria y otros recursos. En Linux, se pueden utilizar herramientas como `top` o `htop` para monitorear el uso de recursos en tiempo real.  
Otra manera es utilizar herramientas específicas de un lenguaje de programación para recopilar información sobre el uso de recursos del programa. Por ejemplo, en Python se puede utilizar el módulo `resource` para medir y controlar los recursos del sistema utilizados por un programa.

## **4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.**

### **Respuestas**

1. **Creación y eliminación de archivos:** La creación y eliminación de archivos son fundamentales para las operaciones computacionales. El sistema operativo debe proporcionar las funciones para crear y eliminar archivos según las necesidades del usuario o de las aplicaciones.

2. **Creación y eliminación de directorios:** Los directorios son estructuras que permiten organizar los archivos en grupos lógicos. El sistema operativo debe ofrecer las funciones para crear y eliminar directorios, así como para cambiar el nombre, mover o copiar los archivos entre ellos.

3. **Instrucciones para la manipulación de archivos:** El sistema operativo debe facilitar el acceso a los archivos mediante instrucciones que permitan abrir, cerrar, leer, escribir, modificar o buscar información en los archivos. Estas instrucciones deben garantizar la seguridad, la integridad y la eficiencia de los datos almacenados en los archivos.

4. **Asignación de almacenamiento permanente:** El sistema operativo debe gestionar el espacio físico disponible en los dispositivos de almacenamiento permanente (como discos duros o memorias flash) y asignarlo a los archivos según su tamaño y sus requerimientos de rendimiento. El sistema operativo debe optimizar el uso del espacio y evitar la fragmentación o el desperdicio de recursos.

5. **Respaldo de archivos:** El sistema operativo debe proveer mecanismos para realizar copias de seguridad de los archivos, con el fin de protegerlos ante posibles pérdidas o daños causados por fallas del hardware, del software o por acciones malintencionadas. El sistema operativo debe permitir restaurar los archivos desde las copias de seguridad cuando sea necesario.

## **5. Compare las ventajas y desventajas de usar la misma interfa de llamadas al sistema para la manipulación de archivos como de dispositivos.**

### **Respuestas**

| **Ventajas** | **Desventajas** |
| --- | --- |
| Cada equipo puede ser accedido como si fuera un archivo en el sistema de archivos y el kernel trata con los equipos mediante la interfaz de archivos para que sea más fácil añadir un nuevo manejador de equipos implementando el código del hardware-específico para soportar la interfaz del archivo¹. En otras palabras, el kernel trata los dispositivos como archivos. | La funcionalidad de ciertos equipos puede ser difícil de capturar dentro del contexto del API de acceso a archivos, lo que puede resultar en una pérdida de funcionalidad o rendimiento. |

## **6. Conteste las siguientes preguntas:**

- ¿Cuál es el propósito del interprete de comandos?
- ¿Por qué está separado del kernel?
- Liste los requisitos para desarrollar un interprete de comandos.

### **Respuestas**

1. **Cuál es el propósito del interprete de comandos?** El propósito del intérprete de comandos es traducir las órdenes que introducen los usuarios mediante un conjunto de instrucciones facilitadas por él mismo directamente al núcleo y al conjunto de herramientas que forman el sistema operativo.

2. **¿Por qué está separado del kernel?** Está separado del kernel ya que el intérprete de comandos está sujeto a cambios. Por ejemplo, se puede cambiar el intérprete de comandos para que sea más fácil de usar o para que tenga más funcionalidad. En cambio, el kernel es un componente crítico del sistema operativo y no se debe cambiar a menos que sea absolutamente necesario.

3. **Liste los requisitos para desarrollar un interprete de comandos.** Los requisitos para desarrollar un intérprete de comandos son:

- Un analizador léxico que reconozca los elementos básicos de la sintaxis del intérprete, como palabras clave, operadores, identificadores, etc.
- Un analizador sintáctico que construya una estructura interna que represente el significado de la orden introducida por el usuario, como un árbol de sintaxis abstracta o una tabla de símbolos.
- Un ejecutor que realice las acciones correspondientes a la orden, ya sea invocando a otros programas, ejecutando funciones internas o llamando al sistema operativo.

## **7. Compare las ventajas y desventajas de los modelos de intercomunicación.**

### **Respuestas**

| **Memoria Compartida** | **Paso de mensajes** |
| --- | --- |
| **Ventajas** |
| Proporciona una abstracción más simple y una portabilidad más sencilla que el paso de mensajes. | No requiere que el programador escriba código para acceder a la memoria compartida, ya que la comunicación es transparente. |
| Proporciona una mayor velocidad de comunicación, ya que se evitan las llamadas al sistema para el intercambio de mensajes. | Es útil para compartir pequeñas cantidades de datos, ya que no hay que resolver conflictos ni mantener la coherencia. |
| Proporciona un mayor espacio de memoria virtual, al sumar el tamaño de la memoria de todos los procesos. | Proporciona un entorno de comunicación flexible, donde los procesos pueden unirse y abandonar el sistema sin afectar a los demás. |
| **Desventajas** |
| Requiere que el programador escriba explícitamente el código para acceder a la memoria compartida y sincronizar los accesos concurrentes. | Requiere que el programador especifique explícitamente el vínculo de comunicación entre los procesos y el tamaño y formato de los mensajes. |
| Puede generar conflictos o inconsistencias si varios procesos escriben en la misma ubicación simultáneamente. | Lleva más tiempo que la memoria compartida, ya que implica la intervención del kernel y el uso de la red para el intercambio de mensajes. |
| Puede ser difícil de implementar en sistemas distribuidos donde los procesos residen en máquinas remotas. | Puede generar sobrecarga o congestión si se envían muchos mensajes o si los mensajes son muy grandes. |

## **8. Conteste las siguientes preguntas:**

- ¿Cuál es la prinicipal ventaja de usar microkernel en el diseño del OS?
- ¿Cómo interactuan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel?
- ¿Cuáles son las desventajas de usar la arquitectura de microkernel?

### **Respuestas**

1. **¿Cuál es la prinicipal ventaja de usar microkernel en el diseño del OS?** La principal ventaja de usar microkernel en el diseño del OS es lograr una mayor fiabilidad al dividir el sistema operativo en módulos pequeños y bien definidos. Esto reduce el tamaño y la complejidad del kernel y facilita su mantenimiento y depuración. Además, permite una mayor modularidad y flexibilidad del sistema operativo, ya que se pueden agregar o reemplazar servicios sin modificar el kernel.
2. **¿Cómo interactuan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel?** Los programas de usuario y los servicios del OS interactúan mediante un mecanismo de comunicación entre procesos (IPC) proporcionado por el microkernel. Los servicios del OS se ejecutan en el espacio de direcciones de usuario y se comunican con el microkernel y con otros servicios mediante el envío y la recepción de mensajes. Los programas de usuario solicitan los servicios del OS mediante llamadas al sistema que generan interrupciones de software y transfieren el control al microkernel, que actúa como intermediario entre los programas y los servicios.
3. **¿Cuáles son las desventajas de usar la arquitectura de microkernel?**  
Algunas desventajas de usar la arquitectura de microkernel son:  
**-** Reduce la velocidad de ejecución del sistema operativo, ya que implica un mayor número de cambios de contexto, copias de mensajes y llamadas al sistema que una arquitectura monolítica.
**-** Reduce la velocidad de ejecución del sistema operativo, ya que implica un mayor número de cambios de contexto, copias de mensajes y llamadas al sistema que una arquitectura monolítica.  
**-** Aumenta la dificultad de programación del sistema operativo, ya que requiere un diseño cuidadoso de las interfaces y los protocolos entre los módulos.  
**-** Puede generar inconsistencias o incoherencias entre los servicios si no se sincronizan adecuadamente.

## **9. Compare las ventajas y desventajas de usar VM.**

### **Respuestas**

| **Ventajas** | **Desventajas** |
| --- | --- |
| Permiten ejecutar múltiples sistemas operativos en una misma máquina física, aprovechando mejor los recursos y reduciendo los costos. | Requieren una mayor inversión inicial para implementar el software de virtualización y el hardware necesario. |
| Proporcionan una mayor seguridad al aislar los sistemas operativos invitados de los anfitriones y evitar que se propaguen virus o malware. | Reducen el rendimiento del sistema operativo, ya que acceden al hardware de forma indirecta y generan sobrecarga en el procesador y la memoria. |
| Facilitan la portabilidad, el mantenimiento y la recuperación de los sistemas operativos, ya que se almacenan como archivos que se pueden copiar, mover o restaurar fácilmente. | Pueden generar problemas de compatibilidad o estabilidad con algunos dispositivos o aplicaciones que no están diseñados para funcionar en un entorno virtualizado. |
| Permiten probar y experimentar con diferentes sistemas operativos sin afectar al sistema principal. | Pueden generar dependencia del proveedor de virtualización o dificultades para migrar a otro proveedor. |