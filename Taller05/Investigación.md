### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 05**

## **1. Compare las diferencias entre la planeación a corto plazo y largo plazo.**

### **Respuestas**

- El **planificador a largo plazo** o planificador de trabajos selecciona procesos de la cola de almacenamiento masivo y los carga en la memoria principal para ejecutarlos. Está más relacionado con la finalización de procesos y tiene más tiempo para decidir qué proceso debe ser ejecutado.
- El **planificador a corto plazo** o planificador de la CPU selecciona procesos que están preparados para ejecución y les asigna una CPU. Es el más usado y debe ser rápido.

## **2. Caracterice dos procesos que se puedan considerar a mediano plazo.**

### **Respuestas**

- El proceso de programación a mediano plazo, que consiste en preparar y interrelacionar planes específicos funcionales para mostrar los detalles de cómo se debe llevar a cabo la estrategia para lograr objetivos, misiones y propósitos de la compañía a largo plazo.
- El proceso de intercambio de procesos entre memoria principal y secundaria, que consiste en transferir siempre a memoria secundaria procesos bloqueados, o transferir a memoria principal procesos bloqueados únicamente por no tener memoria, intentando maximizar la utilización de los recursos.

## **3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos.**

### **Respuestas**

La respuesta se basa en el contexto de la página web. El cambio de contexto entre procesos implica guardar el contexto del proceso actual y restaurar el contexto del otro proceso. El contexto se guarda en el PCB (Bloque de Control de Proceso) que contiene elementos asociados al proceso, como el estado, el contador del programa, los registros de la CPU, la información de planificación, de gestión de memoria, contable y del estado del I/O.

## **4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación sincrona y asíncrona.**

### **Respuestas**

| **Comunicación Síncrona** | **Comunicación Asíncrona** |
| --- | --- |
| **Ventajas** |
| Permite una mayor coordinación y sincronización entre los procesos, evitando inconsistencias o errores de concurrencia. También facilita el seguimiento y la depuración del código, ya que se puede saber el estado de cada proceso en cada momento. | Mejora el rendimiento y la escalabilidad del sistema, ya que los procesos pueden aprovechar mejor los recursos y el tiempo, sin quedar bloqueados por la espera de una respuesta. También permite una mayor flexibilidad y adaptabilidad a los cambios o eventos imprevistos, ya que los procesos pueden reaccionar de forma independiente. |
| **Desventajas** |
| Reduce el rendimiento y la escalabilidad del sistema, ya que los procesos se quedan esperando la respuesta del otro proceso, desperdiciando recursos y tiempo. También puede provocar bloqueos o interbloqueos si hay dependencias circulares o si un proceso no responde. | Dificulta la coordinación y la sincronización entre los procesos, lo que puede generar inconsistencias o errores de concurrencia. También complica el seguimiento y la depuración del código, ya que se puede perder el orden o la secuencia de las acciones realizadas por cada proceso. |

## **5. Defina las ventajas y desventajas desde el punto vista del OS para envío por copia y envío por referencia.**

### **Respuestas**

| **Envío por Copia** | **Envío por Referencia** |
| --- | --- |
| **Ventajas** |
| Garantiza la independencia y la seguridad de los procesos, ya que los cambios que se producen en el mensaje emisor no influyen en el receptor y viceversa. También evita problemas de sincronización o concurrencia entre los procesos que acceden al mensaje. | Ahorra recursos y tiempo, ya que implica un intercambio de punteros en lugar de una copia del mensaje en la memoria. También permite una mayor coherencia y actualización del mensaje entre los procesos que lo comparten. |
| **Desventajas** |
| Consume más recursos y tiempo, ya que implica una copia del mensaje en la memoria. También puede provocar inconsistencias o redundancias si el mensaje se modifica después de la copia. | Compromete la independencia y la seguridad de los procesos, ya que los cambios que se producen en el mensaje afectan a todos los procesos que lo acceden. También requiere mecanismos de sincronización o concurrencia entre los procesos para evitar conflictos o errores. |


## **6. Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo de tamaño variable.**

### **Respuestas**

| **Mensajes de Tamaño Fijo** | **Mensajes de Tamaño Variable** |
| --- | --- |
| **Ventajas** |
| Facilitan la gestión y el almacenamiento de los mensajes, ya que se pueden asignar bloques de memoria fijos y contiguos para cada mensaje. También simplifican el proceso de envío y recepción, ya que se conoce de antemano el tamaño del mensaje. | Permiten aprovechar mejor el espacio y los recursos, ya que el tamaño del mensaje se adapta al contenido real. También permiten transmitir mayor cantidad y variedad de información, ya que el tamaño del mensaje es flexible. |
| **Desventajas** |
| Pueden desperdiciar espacio y recursos, ya que el tamaño del mensaje puede ser mayor o menor que el contenido real. También pueden limitar la cantidad y el tipo de información que se puede transmitir, ya que el tamaño del mensaje es fijo. | Complican la gestión y el almacenamiento de los mensajes, ya que se deben asignar bloques de memoria variables y no contiguos para cada mensaje. También requieren mecanismos adicionales para determinar el tamaño del mensaje en el proceso de envío y recepción. |

## **7. Describa los estados de un proceso.**

### **Respuestas**

- **Nuevo:** El proceso está siendo creado por el sistema operativo, que le asigna un identificador y un bloque de control de proceso.
- **En ejecución:** El proceso está usando la CPU para ejecutar sus instrucciones. Solo puede haber un proceso en ejecución por cada CPU disponible.
- **En espera:** El proceso está esperando a que se produzca un suceso externo, como una entrada/salida o una señal. El proceso no puede usar la CPU hasta que el suceso ocurra.
- **Preparado:** El proceso está a la espera de que le asignen recursos, como la CPU o la memoria. El proceso está listo para ejecutarse, pero debe competir con otros procesos por los recursos disponibles.
- **Terminado:** El proceso ha terminado su ejecución y ha liberado los recursos que usaba. El sistema operativo elimina el proceso de la memoria y de las colas de planificación.

## **8. ¿Qué datos se encuentran en un PCB?**

### **Respuestas**

PCB (Bloque de Control de Proceso) es una estructura de datos que contiene elementos asociados al proceso, como el estado del proceso, el contador del programa, los registros de la CPU, la información de la planificación de la CPU, la información de gestión de memoria, la información contable y la información del estado del I/O.

## **9. Describa un modelo de comunicación Cliente-Servidor.**

### **Respuestas**

Un modelo de comunicación Cliente-Servidor permite la distribución de tareas y servicios dentro de una red de ordenadores. En este modelo, un cliente es un dispositivo o programa que solicita servicios a un servidor, que es otro dispositivo o programa que proporciona los servicios requeridos. El cliente y el servidor se comunican mediante protocolos establecidos y se pueden usar diferentes tipos de arquitecturas para implementar este modelo. Algunos ejemplos de servicios que usan el modelo Cliente-Servidor son el envío de peticiones HTTP a servidores web o la transferencia de archivos por FTP.