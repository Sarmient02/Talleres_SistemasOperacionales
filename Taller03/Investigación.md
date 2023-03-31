### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 03**

## **1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.**

- Mencione dos problemas y explíquelos
- Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta.

### **Respuestas**

1. Acceso no autorizado: Un problema común en los entornos compartidos es que los usuarios obtienen acceso a archivos, datos y recursos a los que no deberían tener acceso. Los usuarios maliciosos que acceden a información confidencial o realizan cambios no autorizados en el sistema pueden comprometer la seguridad del sistema y la privacidad de otros usuarios.

2. Malware: los entornos compartidos también pueden ser vulnerables a la propagación de malware. Si un usuario descarga o ejecuta un archivo infectado, puede propagarlo a otros usuarios del sistema. Si un usuario tiene un software antivirus instalado, pero otro usuario en el sistema no lo tiene y descarga un archivo infectado, podría estar en riesgo.

## **2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes máquinas (Explique por qué):**

- Sistemas embebidos
- Mainframe
- Workstation
- Server
- Mobile

### **Respuestas**

**1.** Sistemas embebidos: En los sistemas embebidos, los recursos que deben gestionarse son la memoria y el procesamiento. La memoria es un recurso importante ya que estos sistemas tienen un límite de memoria y por lo general no se pueden ampliar. El procesamiento también es importante, ya que los sistemas embebidos suelen tener procesadores de baja potencia y, por lo tanto, no pueden manejar una carga de trabajo muy intensiva.

**2.** Mainframe: En los mainframes, los recursos que deben gestionarse son la memoria, el procesamiento, el almacenamiento y el ancho de banda. La memoria es importante para permitir la ejecución de múltiples tareas al mismo tiempo. El procesamiento es importante para garantizar un alto rendimiento de la máquina. El almacenamiento es muy importante ya que los mainframes procesan cantidades muy grandes de datos. Finalmente, el ancho de banda es importante para garantizar una comunicación eficiente con otros sistemas.

**3.** Workstation: En las workstations, los recursos que deben gestionarse son la memoria, el procesamiento, el almacenamiento y los dispositivos de entrada/salida. La memoria es importante para permitir la ejecución de múltiples aplicaciones. El procesamiento es importante para garantizar un alto rendimiento de la máquina. El almacenamiento ya que las workstations manejan grandes cantidades de datos. Finalmente, los dispositivos de entrada/salida son importantes para permitir a los usuarios interactuar con la máquina.

**4.** Server: En los servidores, los recursos que deben gestionarse son la memoria, el procesamiento, el almacenamiento y la red. La memoria es importante para permitir la ejecución de múltiples tareas al mismo tiempo. El procesamiento es importante para un alto rendimiento de la máquina. El almacenamiento es crítico ya que los servidores procesan grandes cantidades de datos. Por último, la red es importante para garantizar una comunicación eficiente entre los servidores y otros sistemas.

**5.** Mobile: En los dispositivos móviles, los recursos que deben gestionarse son la batería, el procesamiento y la memoria. La batería es un recurso crítico ya que los dispositivos móviles deben ser portátiles y, por lo tanto, no pueden depender de una fuente de alimentación constante. El procesamiento es importante para garantizar un alto rendimiento del dispositivo. La memoria es importante para permitir la ejecución de aplicaciones y el almacenamiento de datos.

## **3. Caracterice dos casos de uso par aimplementar un OS para servidor y PC.**

**Respuestas**
- OS de servidor: Un servidor de archivos que almacena y distribuye diferentes tipos de archivos entre los clientes de la red. Los servidores de archivos permiten que los usuarios compartan archivos y carpetas en una red. Además, los servidores de archivos también ofrecen características como backup y recuperación, escalabilidad y rendimiento. El OS más popular para servidores son las distintas distribuciones de Linux, como Ubuntu Server, CentOS, Debian, etc.

- OS para PC: Un sistema operativo para PC es un sistema operativo diseñado para ejecutarse en una computadora personal. Un caso de uso puede ser jugar videojuegos, editar videos, etc. Los sistemas operativos más populares para PC son Windows, macOS y Linux. En general, cualquier tarea cotidiana que involucre una computadora se puede realizar con estos sistemas operativos.

## **4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.**

### **Respuestas**

El sistema de multiprocesamiento tiene más de un procesador y pueden ejecutar múltiples procesos simultáneamente. En el multiprocesamiento simétrico, los procesadores comparten la misma memoria. En el multiprocesamiento asimétrico hay un procesador maestro que controla la estructura de datos del sistema.

La principal diferencia entre el multiprocesamiento simétrico y el asimétrico es que en el multiprocesamiento simétrico, todos los procesadores del sistema ejecutan tareas en el SO. Pero, en el multiprocesamiento asimétrico sólo el procesador maestro ejecuta la tarea en el SO.

## **5. Enumere los requerimientos para que dos máquinas es junten en un cluster y provean un servicio de alta disponibilidad (HA)**

### **Respuestas**

Para que dos máquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA), se necesitan los siguientes requerimientos básicos123:

- Un cluster consta de por lo menos 2 o más nodos
- Los nodos de un cluster están conectados entre sí por al menos un canal de comunicación
- Los clusters necesitan software de control especializado
- Homogeneidad de un cluster: formados por equipos de la misma arquitectura.

## **6. Compare las diferencias entre una excepción y una interrupción.**

### **Respuesta**

Las interrupciones son interrupciones de hardware, mientras que las excepciones son interrupciones de software.

Las interrupciones pueden ser causadas por fallas de software o hardware. Las interrupciones de hardware se denominan Interrupciones, mientras que las interrupciones de software se denominan Excepciones.

En resumen, las excepciones son una forma de manejar errores en el software, mientras que las interrupciones son una forma en que el hardware interactúa con el software.

## **7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU**

- ¿Cómo interactúa la CPU con el dispositivo para coordinar la transferencia?
- ¿Cómo sabe la CPU que las operaciones de memoria se han completado?

### **Respuestas**

**La CPU y el dispositivo se comunican a través de un controlador DMA (acceso directo a memoria) que permite al dispositivo acceder a la memoria del sistema para leer o escribir independientemente de la CPU. El controlador DMA es programado por la CPU para realizar una transferencia de datos entre el dispositivo y la memoria. La CPU establece los registros de dirección y contador de palabras del controlador DMA para indicar la ubicación de la memoria y el tamaño del bloque de datos que se va a transferir.

La CPU sabe que las operaciones de memoria se han completado cuando recibe una señal de interrupción del controlador DMA. El controlador DMA envía una señal de interrupción a la CPU cuando la transferencia finaliza.