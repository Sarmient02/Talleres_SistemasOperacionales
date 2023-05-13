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
| $p_3$   | 2                | 2                |
| $p_5$   | 5                | 4                |
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

## **8. ¿Qué algoritmo puede dar luegar a bloqueos indefinidos?**

### **Respuesta**

El algoritmo de planificación por prioridades puede dar lugar a bloqueos indefinidos o inanición. Esto sucede cuando un proceso de baja prioridad se queda esperando indefinidamente porque procesos de alta prioridad impiden que llegue a la CPU. En sistemas con grandes cargas de trabajo, es probable que esto ocurra y el proceso de baja prioridad nunca se ejecute. Para abordar este problema, se pueden aplicar mecanismos de envejecimiento que aumentan la prioridad de los procesos de baja prioridad a medida que pasa el tiempo.

## **9. Considere un sistema que implementa una planificación por colas multinivel. ¿Qué estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?**

### **Respuesta**

En un sistema que implementa la planificación por colas multinivel, una estrategia que puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso de un usuario es asignar el proceso a una cola de alta prioridad. Esto se puede hacer estableciendo la prioridad del proceso en función de factores como su importancia, requisitos de recursos o preferencias del usuario. Otra estrategia es utilizar mecanismos de envejecimiento para aumentar gradualmente la prioridad de los procesos que han estado esperando durante mucho tiempo en colas de menor prioridad. Esto puede ayudar a prevenir el bloqueo indefinido o la inanición de procesos de baja prioridad.