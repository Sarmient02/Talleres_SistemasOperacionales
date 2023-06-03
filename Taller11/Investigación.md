### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 11**

## **1. Explique la diferencia entre los conceptos de fragmentación interna y externa.**

### **Respuesta**

La fragmentación externa ocurre cuando hay suficiente memoria total para satisfacer una solicitud, pero los bloques de memoria disponibles están dispersos en fragmentos demasiado pequeños para ser utilizados. Esto puede ocurrir en esquemas de asignación de memoria continua, como el primer ajuste, el mejor ajuste y el peor ajuste.

Por otro lado, la fragmentación interna ocurre cuando se asigna más memoria a un proceso de la que realmente necesita. Esto puede ocurrir en esquemas de asignación de memoria con bloques de tamaño fijo, donde el tamaño del bloque no coincide exactamente con la cantidad de memoria solicitada por el proceso.

En resumen, la fragmentación externa se refiere al espacio desperdiciado fuera de las particiones asignadas, mientras que la fragmentación interna se refiere al espacio desperdiciado dentro de las particiones asignadas.

## **2. ¿En qué forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?**

### **Respuesta**

Durante este proceso, el editor de montaje (cargador) reasigna las direcciones reubicables a direcciones absolutas. Los programas de usuario pasan por varios pasos antes de ejecutarse y las direcciones pueden representarse de diferentes formas. Los compiladores se encargan de reasignar estas direcciones simbólicas a direcciones reubicables. El cargador reasigna las direcciones reubicables a direcciones absolutas. Esto significa que el cargador cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria al asignarles direcciones físicas en la memoria durante la carga del programa.

## **3. ¿Qué información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?**

### **Respuesta**

Durante este proceso, el compilador reasigna las direcciones simbólicas a direcciones reubicables, que son direcciones relativas a un punto de referencia en la memoria. El compilador debe pasar esta información al editor de montaje (cargador) para que pueda reasignar las direcciones reubicables a direcciones absolutas durante la carga del programa en la memoria. Esto significa que el compilador debe proporcionar al cargador información sobre las direcciones reubicables y cómo deben ser reasignadas para facilitar el acoplamiento de memoria.

## **4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Cómo situarían en memoria  una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Qué algoritmo hace el uso más eficiente de la memoria?**

### **Respuesta**

### **Primer ajuste**

| Proceso | Tamaño | Bloque      |
| ------- | ------ | ----------- |
| 1       | 212    | 2           |
| 2       | 417    | 5           |
| 3       | 112    | 2           |
| 4       | 426    | No asignado |

### **Mejor ajuste**

| Proceso | Tamaño | Bloque |
| ------- | ------ | ------ |
| 1       | 212    | 4      |
| 2       | 417    | 2      |
| 3       | 112    | 3      |
| 4       | 426    | 5      |

### **Peor ajuste**

| Proceso | Tamaño | Bloque      |
| ------- | ------ | ----------- |
| 1       | 212    | 5           |
| 2       | 417    | 2           |
| 3       | 112    | 5           |
| 4       | 426    | No asignado |

El algoritmo que hace un mejor uso de la memoria es el de **mejor ajuste**, ya que asigna los procesos a los bloques de memoria que mejor se ajustan a su tamaño, dejando menos espacio sin asignar y logra dejar todos los procesos asignados a un bloque.

## **5. La mayoria de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución ¿Qué se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?**

1. **Asignación contigua de memoria.**
2. **Segmentación pura.**
3. **Paginación pura.**

### **Respuesta**

Para soportar la asignación dinámica de memoria en los siguientes esquemas se necesitaría lo siguiente:

1. **Asignación contigua de memoria:** La asignación de memoria contigua es un método de asignación de memoria en el que los bloques de memoria se asignan en un trozo único y continuo. Este método se utiliza normalmente cuando es necesario almacenar grandes cantidades de datos en la memoria, o cuando se debe acceder a los datos de forma secuencial.

2. **Segmentación pura:** La segmentación pura se refiere al manejo de bloques de tamaño variable en memoria virtual y la conversión de estos segmentos a memoria real. Se utilizan dos conceptos para tal conversión: número de segmento y desplazamiento dentro del segmento.

3. **Paginación pura:** La paginación pura en el manejo de memoria consiste en que el sistema operativo divide dinámicamente los programas en unidades de tamaño fijo (generalmente múltiplos de 1 kilobyte) los cuales va a manipular de RAM a disco y viceversa [^10^].

## **6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:**

1. **Fragmentación externa.**
2. **Fragmentción interna.**
3. **Capacidad de compartir código.**

### **Respuesta**

Los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura son diferentes formas de gestionar el espacio de memoria disponible para los procesos. Cada uno tiene sus ventajas y desventajas con respecto a la fragmentación externa, la fragmentación interna y la capacidad de compartir código. A continuación te presento una tabla comparativa de estos aspectos:

| Esquema             | Fragmentación externa                                                                                                                      | Fragmentación interna                                                                                                                                     | Capacidad de compartir código                                                                    |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| Asignación continua | Alta, ya que se producen huecos entre los bloques asignados a los procesos que dificultan el aprovechamiento de la memoria                 | Baja, ya que cada proceso ocupa un bloque contiguo del tamaño exacto que necesita                                                                         | Baja, ya que no hay forma de compartir segmentos o páginas entre procesos                        |
| Segmentación pura   | Media, ya que se reduce el tamaño de los huecos al dividir los procesos en segmentos lógicos                                               | Media, ya que cada segmento ocupa un bloque contiguo del tamaño exacto que necesita, pero puede haber desperdicio de espacio al final del último segmento | Alta, ya que se pueden compartir segmentos entre procesos si tienen el mismo nombre y atributos  |
| Paginación pura     | Nula, ya que se elimina la fragmentación externa al dividir la memoria en marcos de tamaño fijo y asignarlos a las páginas de los procesos | Alta, ya que cada página ocupa un marco completo aunque no lo necesite, lo que genera desperdicio de espacio al final de cada página                      | Alta, ya que se pueden compartir páginas entre procesos si tienen el mismo contenido y atributos |

## **7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.**

1. **¿Por qué?**
2. **¿Como podía el OS permitir el acceso a otras zonas de memoria?**
3. **¿Por qué debería o por qué no debería?**

### **Respuesta**

1. En un sistema operativo con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad porque la memoria física se divide en porciones del mismo tamaño llamadas marcos o páginas físicas y cada página física se asigna a un proceso de forma exclusiva¹. Cada proceso tiene su propia tabla de páginas que mapea sus páginas lógicas a marcos de página físicos².

2. El sistema operativo podría permitir el acceso a otras zonas de memoria mediante el uso de técnicas como el intercambio de memoria o la asignación dinámica de memoria.

3. El sistema operativo debería controlar el acceso a la memoria para evitar problemas como la corrupción de datos o la interferencia entre procesos. Sin embargo, en algunos casos, puede ser necesario permitir el acceso compartido a ciertas áreas de memoria para permitir la comunicación entre procesos o para mejorar el rendimiento.

## **8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.**

### **Respuesta**

La paginación y la segmentación son dos mecanismos diferentes para gestionar la memoria en un sistema operativo. Ambos utilizan estructuras de datos para convertir direcciones virtuales en direcciones físicas, pero la cantidad de memoria requerida por estas estructuras puede variar. En el caso de la paginación, se utiliza una tabla de páginas para cada proceso, cuyo tamaño depende del tamaño del espacio de direcciones virtuales y del tamaño de página. En el caso de la segmentación, se utiliza una tabla de segmentos para cada proceso, cuyo tamaño depende del número de segmentos definidos por el proceso. Esto puede hacer que las tablas de segmentos sean más pequeñas que las tablas de páginas en algunos casos.

## **9. Considere la siguiente tabla de segmento:**

| Segmento | Base | Longitud |
| -------- | ---- | -------- |
| 0        | 219  | 600      |
| 1        | 2300 | 14       |
| 2        | 90   | 100      |
| 3        | 1327 | 580      |
| 4        | 1952 | 96       |

**¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?**

1. **0. 430**
2. **1. 10**
3. **2. 500**
4. **3. 400**
5. **4. 112**

### **Respuesta**

Para calcular las direcciones físicas correspondientes a las direcciones lógicas dadas, debemos sumar la base del segmento correspondiente a la dirección lógica y la dirección dentro del segmento.

1. La dirección lógica **0, 430** se refiere al segmento 0, con un desplazamiento de 430. La base del segmento 0 es 219, por lo que la dirección física es 219 + 430 = **649**.
2. La dirección lógica **1, 10** se refiere al segmento 1, con un desplazamiento de 10. La base del segmento 1 es 2300, por lo que la dirección física es 2300 + 10 = **2310**.
3. La dirección lógica **2, 500** se refiere al segmento 2, con un desplazamiento de 500. Sin embargo, la longitud del segmento 2 es solo 100, lo que significa que el desplazamiento de 500 está fuera del límite del segmento y no es válido.
4. La dirección lógica **3, 400** se refiere al segmento 3, con un desplazamiento de 400. La base del segmento 3 es 1327, por lo que la dirección física es 1327 + 400 = **1727**.
5. La dirección lógica **4, 112** se refiere al segmento 4, con un desplazamiento de 112. Sin embargo, la longitud del segmento 4 es solo 96, lo que significa que el desplazamiento de 112 está fuera del límite del segmento y no es válido.

| Dirección Lógica | Cálculo           | Dirección Física | ¿Válida? |
| ---------------- | ----------------- | ---------------- | -------- |
| 0, 430           | 219 + 430 = 649   | 649              | Sí       |
| 1, 10            | 2300 + 10 = 2310  | 2310             | Sí       |
| 2, 500           | 90 + 500 = 590    | 590              | No       |
| 3, 400           | 1327 + 400 = 1727 | 1727             | Sí       |
| 4, 112           | 1952 + 112 = 2064 | 2064             | No       |
