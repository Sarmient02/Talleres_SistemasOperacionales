### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 12**

## **1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.**

### **Respuesta**

Estos componentes permiten al sistema operativo gestionar las páginas que se cargan en memoria y las que se almacenan en disco, así como detectar y tratar los fallos de página.

- Una **tabla de páginas** que permite el bit válido-inválido o una serie de bits de protección.
- **Memoria secundaria** que almacena páginas que no estén en la memoria principal, se le conoce como dispositivo de intercambio o espacio de intercambio.

## **2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?**

### **Respuesta**

La copia durante la escritura es una técnica que permite que los procesos padre e hijo compartan las mismas páginas. Estas páginas se marcan como páginas de copia durante la escritura, lo que significa que cualquier proceso que escriba en una de las páginas compartidas, se creará una copia de esa página.

Esta técnica es ventajosa cuando se utiliza la llamada al sistema fork() para crear procesos, ya que permite una creación rápida de procesos y minimiza el número de páginas asignadas al proceso creado. Solo se copian las páginas que sean o puedan ser modificadas por algunos procesos, todas las páginas no modificadas o de solo lectura podrán ser compartidas por los procesos padre-hijo.


## **3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?**

### **Respuesta**

El soporte de hardware requerido para implementar las características de copia durante escritura es el siguiente:

- Una tabla de páginas que permite el bit válido-inválido o una serie de bits de protección.
- Un mecanismo para detectar y tratar las escrituras en las páginas compartidas, como una interrupción o una excepción.
- Un conjunto compartido de páginas libres para satisfacer la copia durante la escritura, se asignan cuando el cúmulo o pila del proceso deben expandirse y el sistema operativo asigna estas páginas utilizando la técnica de relleno de ceros bajo demanda antes de asignarlas eliminando el contenido anterior.

## **4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas**

### **Respuesta**

Una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas (LFU) genere menos fallos de página que el algoritmo de sustitución de las páginas más recientemente utilizadas (LRU) es cuando hay un cambio en el patrón de acceso a las páginas. Por ejemplo, si un proceso accede a una serie de páginas con mucha frecuencia durante un tiempo, y luego cambia a otra serie de páginas con menos frecuencia, el algoritmo LFU mantendrá las páginas más usadas en memoria, mientras que el algoritmo LRU las eliminará. Esto puede causar más fallos de página si el proceso vuelve a acceder a las páginas anteriores.

## **5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas**

### **Respuesta**

Una situación en la que el algoritmo de sustitución de las páginas más frecuentemente utilizadas (MFU) genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas (LRU) es cuando hay páginas que se cargan inicialmente y no se usan más. Por ejemplo, si un proceso carga una serie de páginas al inicio y luego accede a otras páginas con más frecuencia, el algoritmo MFU eliminará las páginas iniciales, mientras que el algoritmo LRU las mantendrá en memoria. Esto puede causar más fallos de página si el proceso necesita más espacio de memoria y hay que sustituir otras páginas.

## **6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:**

- Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de 
marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?
- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de 
marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto 
compartido de marcos libres para hacer sitio para la página solicitada?

### **Respuesta**

- Si se produce un fallo de página y la página no se encuentra en el conjunto compartido de marcos libres, se puede generar espacio libre para la nueva página solicitada eliminando la página más antigua del conjunto residente, siguiendo el algoritmo FIFO. La página eliminada se puede añadir al conjunto compartido de marcos libres, si hay espacio disponible, o se puede escribir en el disco, si no lo hay.

- Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, se puede activar la página residente moviéndola del conjunto compartido al conjunto residente, actualizando las tablas correspondientes. El conjunto compartido de marcos libres se puede gestionar para hacer sitio para la página solicitada eliminando la página menos recientemente utilizada del conjunto compartido, siguiendo el algoritmo LRU. La página eliminada se puede escribir en el disco o descartar, según sea necesario.

## **7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:**

- **Uso de CPU 20%**
- **Paginación de disco 97,7%**
- **Otros dispositivos de I/O 5%**

**Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta.**

- **Instalar una CPU más rápida.**
- **Instalar un disco de paginación de mayor tamaño.**
- **Incrementar el grado de multiprogramación.**
- **Instalar mas memoria principal.**
- **Instalar un disco duro mas rápidos.**

### **Respuesta**

- **Instalar una CPU más rápida**: No permitirá mejorar las tasas de utilización de la CPU, ya que el cuello de botella está en el disco de paginación.
- **Instalar un disco de paginación de mayor tamaño**: No permitirá mejorar las tasas de utilización de la CPU, ya que el problema es la velocidad de acceso a las páginas.
- **Incrementar el grado de multiprogramación**: Es probable que permita mejorar las tasas de utilización de la CPU, si se hace con moderación y se evita el thrashing.
- **Instalar más memoria principal**: Permitirá mejorar las tasas de utilización de la CPU, ya que se podrá asignar más marcos a los procesos y reducir los fallos de página.
- **Instalar un disco duro más rápido**: Permitirá mejorar las tasas de utilización de la CPU, ya que se podrá acceder a las páginas más rápidamente y reducir los fallos de página.