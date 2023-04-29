### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 06**

## **1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.**

### **Respuestas**

- Cuando el programa se ejecuta en una máquina con un solo procesador y las tareas son intensivas en CPU. En este caso, el multihilo añade una sobrecarga de creación y gestión de hilos, y no aprovecha el paralelismo. El monohilo puede ser más rápido y simple.
- Cuando el programa tiene que acceder a un recurso compartido que requiere sincronización o bloqueo. En este caso, el multihilo puede causar contención o inanición, y reducir el rendimiento. El monohilo puede evitar estos problemas.

## **2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.**

### **Respuestas**

Una biblioteca de hilos de nivel de usuario realiza las siguientes acciones para cambiar el contexto entre hilos:

- Guarda el estado del hilo actual (contador de programa, conjunto de registros y pila) en una estructura de datos en el espacio de usuario.
- Restaura el estado del hilo siguiente (contador de programa, conjunto de registros y pila) desde la estructura de datos en el espacio de usuario.
- Actualiza el identificador del hilo actual.

## **3. ¿Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Sí, no y porqué**

### **Respuesta**

**No**, los valores de los registros no se comparten entre los hilos de un proceso multihilo. Cada hilo tiene su propio contador de programa, conjunto de registros y pila. Estos componentes forman parte del estado del hilo y son únicos para cada hilo. Los hilos solo comparten el código, los datos, los archivos abiertos y los recursos de la máquina con otros hilos del mismo proceso.

## **4. ¿Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Sí, no y porqué**

### **Respuesta**

**Sí**, los cúmulos de memoria se comparten entre los hilos de un proceso multihilo. Los cúmulos de memoria forman parte de los datos del proceso, que son uno de los componentes que los hilos comparten con otros hilos del mismo proceso. Esto permite que los hilos puedan acceder y modificar la misma información en la memoria.

## **5. ¿Las variables globales se comparten entre los hilos de un proceso multihilo? Sí, no y porqué**

### **Respuesta**

**Sí**, las variables globales se comparten entre los hilos de un proceso multihilo. Las variables globales forman parte del código del proceso, que es otro de los componentes que los hilos comparten con otros hilos del mismo proceso. Esto permite que los hilos puedan leer y escribir el mismo valor de las variables globales.

## **6. ¿La memoria de pila se comparten entre los hilos de un proceso multihilo? Sí, no y porqué**

### **Respuesta**

**No**, la memoria de pila no se comparte entre los hilos de un proceso multihilo. La memoria de pila forma parte del estado del hilo, que es uno de los componentes que los hilos no comparten con otros hilos del mismo proceso. Esto permite que cada hilo tenga su propia pila para almacenar las variables locales, los parámetros y las direcciones de retorno de las funciones.

## **7. ¿En qué ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador?**

### **Respuestas**

- Cuando las tareas son de entrada/salida y se bloquean al esperar por un recurso externo. En este caso, el multihilo permite que otros hilos sigan ejecutándose mientras uno está bloqueado, aprovechando mejor el tiempo de CPU.
- Cuando las tareas son heterogéneas y tienen diferentes prioridades o necesidades de recursos. En este caso, el multihilo permite que el sistema operativo planifique los hilos de forma más eficiente y equitativa, evitando la inanición o la contención.
- Cuando el sistema soporta el multihilo simultáneo (SMT), que permite que un núcleo ejecute dos o más instrucciones de diferentes hilos al mismo tiempo. En este caso, el multihilo aumenta el paralelismo a nivel de instrucción y mejora la utilización del núcleo.

## **8. ¿Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?**

### **Respuestas**

En general, se puede decir que una solución multihilo puede conseguir mejor rendimiento en un sistema multiprocesador que en uno de un solo procesador, siempre que los hilos se puedan distribuir entre los distintos núcleos o procesadores de forma eficiente y que no haya demasiada contención por los recursos compartidos. Sin embargo, hay casos en los que el rendimiento puede empeorar al aumentar el número de hilos o procesadores, por ejemplo, cuando hay mucha comunicación o sincronización entre los hilos, o cuando el problema no se puede dividir en subproblemas independientes.

## **9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores**

### **Respuesta**

Los hilos de usuario son los que se crean y gestionan por el programa de usuario, mientras que los hilos del kernel son los que se crean y gestionan por el sistema operativo. Cuando el número de hilos de usuario es mayor que el número de procesadores del sistema, se produce una **sobrecarga** de programación, ya que el sistema operativo tiene que asignar y desasignar los procesadores a los hilos de usuario con frecuencia. Cuando el número de hilos del kernel asignados al programa es menor que el número de procesadores, se produce una **infrautilización** de los recursos, ya que algunos procesadores pueden quedar ociosos mientras hay hilos de usuario esperando a ser ejecutados. Por lo tanto, el rendimiento del programa se ve afectado negativamente en ambos casos.