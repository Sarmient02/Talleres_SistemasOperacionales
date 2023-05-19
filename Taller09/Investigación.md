### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 09**

## **1. ¿Cuál es significado del término "espera activa"?**

### **Respuesta**

La espera activa se refiere a una situación en la que un proceso ejecuta un bucle sin fin en el código de entrada mientras espera para entrar en su sección crítica. Esto desperdicia ciclos de CPU que podrían ser utilizados por otros procesos.

## **2. ¿De qué manera se puede evitar la espera activa?**

### **Respuesta**

Una forma de evitar la espera activa es modificar el semáforo para que el proceso se bloquee en lugar de esperar activamente. Esto se logra agregando el proceso a la cola de espera asociada al semáforo y cambiando su estado a espera. Luego, el control se transfiere al planificador y se selecciona otro proceso para su ejecución.

## **3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.**

### **Respuesta**

Los bloqueos mediante bucle sin fin, también conocidos como spinlocks, no son apropiados para sistemas monoprocesador porque la condición que permitiría a un proceso salir del spinlock solo puede obtenerse ejecutando un proceso diferente. Si el proceso no cede el procesador, otros procesos no tienen la oportunidad de establecer la condición del programa necesaria para que el primer proceso avance.

Sin embargo, los spinlocks se usan con frecuencia en sistemas multiprocesador porque son útiles en situaciones donde un hilo puede ejecutar un bucle ocupado (por un corto período de tiempo) en lugar de incurrir en el costo de ser puesto en una cola de espera.

## **4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.**

### **Respuesta**

Las interrupciones no son apropiadas para implementar primitivas de sincronización en sistemas multiprocesador porque deshabilitar las interrupciones solo evita que otros procesos se ejecuten en el procesador en el que se deshabilitaron las interrupciones. No hay limitaciones sobre qué procesos podrían estar ejecutándose en otros procesadores y, por lo tanto, el proceso que deshabilita las interrupciones no puede garantizar la exclusión mutua.

## **5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.**

### **Respuesta**

La instrucción swap() se puede utilizar para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada. La exclusión mutua es una técnica que se utiliza para evitar que dos o más procesos accedan simultáneamente a un recurso compartido. El algoritmo de exclusión mutua con swap es el siguiente:
    
```c
mutex = 0
def lock():
    local = 1
    while local != 0:
        swap(mutex, local)
def unlock():
    mutex = 0
```
La función lock() intenta adquirir el recurso compartido estableciendo la variable local en 1 y luego intercambiando su valor con el de mutex utilizando la instrucción swap(). Si mutex ya está en uso, la variable local se establece en el valor actual de mutex y se repite el proceso hasta que mutex esté disponible. La función unlock() libera el recurso compartido estableciendo mutex en 0.

## **6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes**

### **Respuesta**

Los semáforos son una herramienta de programación que se utiliza para controlar el acceso a recursos compartidos en un sistema operativo. En el caso de los servidores, los semáforos se pueden utilizar para limitar el número de conexiones concurrentes. 
Un servidor puede limitar el número de conexiones concurrentes utilizando semáforos de la siguiente manera:
- El servidor crea un semáforo con un valor inicial igual al número máximo de conexiones permitidas.
- Cuando un cliente se conecta al servidor, el servidor decrementa el valor del semáforo.
- Si el valor del semáforo es cero, el servidor no acepta más conexiones hasta que se libere una conexión existente.
- Cuando un cliente se desconecta del servidor, el servidor incrementa el valor del semáforo.

## **7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización**

### **Respuesta**

Un monitor es un objeto diseñado para ser accedido desde múltiples hilos. Las funciones miembro o métodos de un objeto monitor impondrán exclusión mutua, por lo que solo un hilo puede realizar cualquier acción en el objeto en un momento dado. Un semáforo es un objeto de nivel inferior. Podría usar un semáforo para implementar un monitor. Un semáforo es esencialmente solo un contador. Cuando el contador es positivo, si un hilo intenta adquirir el semáforo, se le permite y el contador se decrementa. Cuando un hilo termina, libera el semáforo y aumenta el contador.

En resumen, los monitores y los semáforos son equivalentes en cuanto a su capacidad para implementar soluciones a los mismos tipos de problemas de sincronización.

## **8. La exclusión mutua estricta en un monitor ahce que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.**

### **Respuesta**

La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas porque garantiza que solo un proceso puede acceder al recurso compartido en un momento dado. En otras palabras, la exclusión mutua garantiza que no se produzcan conflictos entre los procesos que intentan acceder al recurso compartido al mismo tiempo. El monitor de búfer limitado es adecuado para porciones pequeñas porque solo puede contener un número limitado de elementos. Si se intenta agregar un elemento adicional cuando el búfer está lleno, el proceso se bloqueará hasta que se libere un espacio en el búfer.

## **9. ¿Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?**

### **Respuesta**

Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización sólo en sistemas multiprocesador porque son más eficientes que los mutex para el bloqueo a corto plazo en estos sistemas. Los bloqueos mediante bucle sin fin evitan la sobrecarga de poner hilos en reposo y despertarlos de nuevo, lo que puede ser costoso para bloqueos que se mantienen durante muy poco tiempo. Sin embargo, los spinlocks no son adecuados para sistemas monoprocesador, ya que malgastan tiempo de la CPU al estar pendientes de un bloqueo que sólo puede ser liberado por otro hilo que se ejecute en el mismo procesador. Los mutex son más apropiados para los sistemas monoprocesador porque ponen el hilo en reposo y permiten que otro hilo se ejecute, posiblemente desbloqueando el mutex y permitiendo que el primer hilo reanude su ejecución.