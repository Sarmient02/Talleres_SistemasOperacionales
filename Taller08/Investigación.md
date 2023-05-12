### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 08**

## **1. ¿Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?**

### **Respuesta**

Es importante para un planificador diferenciar entre un programa limitado por I/O y uno limitado por CPU porque esto puede afectar la selección del algoritmo apropiado para la planificación. Un programa limitado por I/O presenta ráfagas de CPU cortas . Esto significa que el programa pasa más tiempo esperando operaciones de entrada/salida que ejecutando instrucciones en la CPU. Al tener en cuenta esta información, el planificador puede tomar decisiones más informadas sobre cómo asignar recursos y maximizar la eficiencia del sistema.

## **2. ¿Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?**

### **Respuesta**

La utilización de la CPU y el tiempo de respuesta pueden entrar en conflicto en determinadas configuraciones. Por ejemplo, maximizar la utilización de la CPU puede llevar a una mayor tasa de procesamiento y una mayor eficiencia del sistema. Sin embargo, esto también puede aumentar el tiempo de espera en la cola de procesos preparados y, por lo tanto, aumentar el tiempo de respuesta para los procesos individuales. Por otro lado, minimizar el tiempo de respuesta puede mejorar la experiencia del usuario al proporcionar una respuesta rápida a sus solicitudes, pero esto puede reducir la utilización de la CPU y disminuir la eficiencia del sistema. Por lo tanto, es importante encontrar un equilibrio adecuado entre estos dos criterios al seleccionar un algoritmo de planificación.

## **3. ¿Cómo entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?**

### **Respuesta**

El tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto en determinadas configuraciones. Por ejemplo, minimizar el tiempo medio de procesamiento puede mejorar la eficiencia del sistema al permitir que se completen más procesos en un período de tiempo determinado. Sin embargo, esto también puede aumentar el tiempo máximo de espera para algunos procesos, ya que pueden tener que esperar más tiempo en la cola de procesos preparados antes de ser asignados a la CPU. Por otro lado, minimizar el tiempo máximo de espera puede mejorar la experiencia del usuario al reducir el tiempo que tienen que esperar para que se complete su proceso, pero esto puede aumentar el tiempo medio de procesamiento y disminuir la eficiencia del sistema. Por lo tanto, es importante encontrar un equilibrio adecuado entre estos dos criterios al seleccionar un algoritmo de planificación.

## **4. ¿Cómo entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?**

### **Respuesta**

La utilización de dispositivos de E/S y la utilización de la CPU pueden entrar en conflicto porque el cambio de contexto puede ser costoso. Esto puede llevar a una situación en la que la CPU esté inactiva aunque haya otros procesos que podrían estar ejecutándose. Este conflicto puede resolverse utilizando un algoritmo de programación de CPU diferente que minimice la sobrecarga de la conmutación de contexto.

Estas son algunas de las formas de resolver el conflicto:

- Utilizar un algoritmo de programación de CPU diferente.
- Utilizar programación anticipada.
- Utilizar un algoritmo de programación híbrido.

La mejor manera de resolver el conflicto depende de la configuración específica del sistema.

## **5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice**

| Proceso | Tiempo de ráfaga | Prioridad |
| ------- | ---------------- | --------- |
| $p_1$   | 10               | 3         |
| $p_2$   | 1                | 1         |
| $p_3$   | 2                | 3         |
| $p_4$   | 1                | 4         |
| $p_5$   | 5                | 2         |

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).

### **Respuestas**

## **FCFS**

![Diagrama de Grantt FCFS](https://github.com/Sarmient02/Talleres_SistemasOperacionales/blob/main/Taller08/img/fcfs.png?raw=true)

## **SJF**

![Diagrama de Grantt SFJ](https://github.com/Sarmient02/Talleres_SistemasOperacionales/blob/main/Taller08/img/sjf.png?raw=true)

## **Prioridades**

![Diagrama de Grantt Prioridades](https://github.com/Sarmient02/Talleres_SistemasOperacionales/blob/main/Taller08/img/prioridades.png?raw=true)

## **RR**

![Diagrama de Grantt RR](https://github.com/Sarmient02/Talleres_SistemasOperacionales/blob/main/Taller08/img/RR.png?raw=true)

## **6. ¿Cuál es el tiempo de ejecución de cada proceso para cada algoritmo?**

### **Respuesta**

| Proceso | FCFS | SJF | Prioridades | RR  |
| ------- | ---- | --- | ----------- | --- |
| $p_1$   | 10   | 10  | 10          | 10  |
| $p_2$   | 1    | 1   | 1           | 1   |
| $p_3$   | 2    | 2   | 2           | 2   |
| $p_4$   | 1    | 1   | 1           | 1   |
| $p_5$   | 5    | 5   | 5           | 5   |

## **7. ¿Cúal es el tiempo de espera de cada proceso para cada algoritmo?**

### **Respuesta**

## **FCFS**

| Proceso | Tiempo de Ráfaga | Tiempo de espera |
| ------- | ---------------- | ---------------- |
| $p_1$   | 10               | 0                |
| $p_2$   | 1                | 10               |
| $p_3$   | 2                | 11               |
| $p_4$   | 1                | 13               |
| $p_5$   | 5                | 14               |

## **SJF**

| Proceso | Tiempo de Ráfaga | Tiempo de espera |
| ------- | ---------------- | ---------------- |
| $p_2$   | 1                | 0                |
| $p_4$   | 1                | 1                |
| $p_5$   | 5                | 2                |
| $p_3$   | 2                | 7                |
| $p_1$   | 10               | 9                |

## **Prioridades**

| Proceso | Tiempo de Ráfaga | Prioridad | Tiempo de Espera |
| ------- | ---------------- | --------- | ---------------- |
| $p_2$   | 1                | 1         | 0                |
| $p_5$   | 5                | 2         | 1                |
| $p_1$   | 10               | 3         | 6                |
| $p_3$   | 2                | 3         | 16               |
| $p_4$   | 1                | 4         | 18               |

## **RR**

| Proceso | Tiempo de Ráfaga | Tiempo de Espera |
| ------- | ---------------- | ---------------- |
| $p_1$   | 10               | 49               |
| $p_2$   | 1                | 1                |
| $p_3$   | 2                | 8                |
| $p_4$   | 1                | 3                |
| $p_5$   | 5                | 44               |

## **8. ¿Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?**

### **Respuestas**

En general, se puede decir que una solución multihilo puede conseguir mejor rendimiento en un sistema multiprocesador que en uno de un solo procesador, siempre que los hilos se puedan distribuir entre los distintos núcleos o procesadores de forma eficiente y que no haya demasiada contención por los recursos compartidos. Sin embargo, hay casos en los que el rendimiento puede empeorar al aumentar el número de hilos o procesadores, por ejemplo, cuando hay mucha comunicación o sincronización entre los hilos, o cuando el problema no se puede dividir en subproblemas independientes.

## **9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores**

### **Respuesta**

Los hilos de usuario son los que se crean y gestionan por el programa de usuario, mientras que los hilos del kernel son los que se crean y gestionan por el sistema operativo. Cuando el número de hilos de usuario es mayor que el número de procesadores del sistema, se produce una **sobrecarga** de programación, ya que el sistema operativo tiene que asignar y desasignar los procesadores a los hilos de usuario con frecuencia. Cuando el número de hilos del kernel asignados al programa es menor que el número de procesadores, se produce una **infrautilización** de los recursos, ya que algunos procesadores pueden quedar ociosos mientras hay hilos de usuario esperando a ser ejecutados. Por lo tanto, el rendimiento del programa se ve afectado negativamente en ambos casos.