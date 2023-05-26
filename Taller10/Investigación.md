### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 10**

![Diagrama](https://github.com/Sarmient02/Talleres_SistemasOperacionales/blob/main/Taller10/img/diagrama.png?raw=true)

## **1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.**

### **Respuesta**

1. **Exclusión mutua**: Cada calle solo puede ser ocupada por un auto a la vez, es decir, los autos no pueden compartir el mismo espacio en la calle.
2. **Retención y espera**: Cada auto retiene el espacio que ocupa en su calle y espera poder avanzar, pero no puede hacerlo porque está bloqueado por otros autos en las otras calles.
3. **Sin desalojo**: Ningún auto puede ser forzado a retroceder o salir de su calle para liberar el espacio que ocupa. Solo puede avanzar hacia delante cuando sea posible.
4. **Espera circular**: Cada auto en una calle horizontal espera poder avanzar hacia delante, pero está bloqueado por los autos en las calles verticales, y viceversa. Esto crea una espera circular en la que ningún auto puede avanzar.
En esta situación, se ha producido un interbloqueo en el que ningún auto puede avanzar y el tráfico está completamente detenido.

## **2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.**

### **Respuesta**

Una regla simple para evitar interbloqueos en este sistema podría ser establecer un sistema de semáforos en el que solo se permita avanzar a los autos de una calle a la vez, alternando entre las calles horizontales y verticales. Esto también rompería la espera circular y evitaría el interbloqueo.

## **3. Explique cómo se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.**

### **Respuesta**

En el problema de la cena de los filósofos, estas condiciones se cumplen de la siguiente manera:
- Exclusión mutua: Cada tenedor es un recurso no compartible, ya que solo puede ser utilizado por un filósofo a la vez.
- Retención y espera: Un filósofo puede sostener un tenedor mientras espera que el otro tenedor esté disponible.
- Sin desalojo: Un tenedor no puede ser tomado a la fuerza de un filósofo; debe ser liberado voluntariamente por el filósofo que lo sostiene.
- Espera circular: Puede ocurrir una espera circular cuando cada filósofo sostiene un tenedor y espera el otro, que está sostenido por otro filósofo.

Cuando se cumplen todas estas condiciones, puede ocurrir un interbloqueo, donde todos los filósofos están sosteniendo un tenedor y esperando el otro, lo que resulta en que no se haga ningún progreso.

## **4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.**

### **Respuesta**

Una forma de evitar el interbloqueo en este problema es impidiendo que se cumpla una de las cuatro condiciones necesarias para que ocurra un interbloqueo, las dos condiciones que se podrían romper son la espera circular y la espera con retención.

Una posible solución es romper la espera con retención haciendo que cada filósofo suelte el tenedor que tiene si no puede tomar el otro, y vuelva a intentarlo después de un tiempo aleatorio. Así se evita que un filósofo bloquee un recurso mientras espera por otro.

## **5. Compare el esquema de espera circular con los distintos esquemas de evasion de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.**

### **Respuesta**

| Esquema | Tiempo de ejecución adicional |
| --- | --- |
| Espera circular | Puede requerir más tiempo ya que los procesos deben solicitar recursos en un orden específico |
| Estado seguro/Algoritmo del banquero | Puede requerir menos tiempo en comparación con la espera circular, pero requiere información adicional sobre cómo se solicitarán los recursos |
| Detección de interbloqueos | Puede requerir menos tiempo de ejecución adicional en comparación con la prevención de interbloqueos, pero puede ser más costoso en términos de tiempo y recursos necesarios para detectar interbloqueos |
| Recuperación de interbloqueo | Puede requerir menos tiempo de ejecución adicional en comparación con la prevención de interbloqueos, pero puede ser más costoso en términos de tiempo y recursos necesarios para recuperar interbloqueos |


## **6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.**

### **Respuesta**

| Esquema | Tasa de procesamiento del sistema |
| --- | --- |
| Espera circular | Puede verse afectada ya que los procesos deben solicitar recursos en un orden específico, lo que puede retrasar la ejecución de algunos procesos y reducir la tasa de procesamiento del sistema. |
| Estado seguro/Algoritmo del banquero | Pueden permitir una mayor flexibilidad en la asignación de recursos y, por lo tanto, pueden mejorar la tasa de procesamiento del sistema. Sin embargo, estos esquemas requieren información adicional sobre cómo se solicitarán los recursos y pueden requerir más tiempo de ejecución adicional para tomar decisiones sobre la asignación de recursos. |
| Detección de interbloqueos | Si se producen interbloqueos con frecuencia, la detección y recuperación de interbloqueos puede ser costosa en términos de tiempo y recursos, lo que puede reducir la tasa de procesamiento del sistema. |
| Recuperación de interbloqueo | Si se producen interbloqueos con frecuencia, la detección y recuperación de interbloqueos puede ser costosa en términos de tiempo y recursos, lo que puede reducir la tasa de procesamiento del sistema. Además, la terminación o reinicio de procesos interbloqueados puede retrasar la ejecución y reducir la tasa de procesamiento del sistema. |

## **7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.**

### **Respuesta**

En este caso, el sistema está libre de interbloqueos porque el número total de recursos disponibles (cuatro) es mayor que el número máximo de recursos que cualquier proceso puede necesitar (dos). Esto significa que incluso si un proceso retiene el número máximo de recursos que necesita, todavía habrá suficientes recursos disponibles para satisfacer las necesidades de otro proceso.

Además, dado que cada proceso necesita como máximo dos recursos, no es posible que se produzca una espera circular en la que un proceso esté esperando un recurso retenido por otro proceso que, a su vez, está esperando un recurso retenido por el primer proceso.

## **8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.**

### **Respuesta**

Si los palillos están en el centro de la mesa, una posible regla simple es la siguiente:

- Un filósofo sólo puede tomar un palillo del centro si hay al menos dos palillos disponibles y si no tiene otro palillo en la mano.
- Un filósofo sólo puede empezar a comer si tiene dos palillos en la mano.
- Un filósofo debe devolver los dos palillos al centro cuando termina de comer.

Esta regla evita que se produzcan condiciones de carrera o espera circular entre los filósofos. Sin embargo, esta regla tampoco garantiza que todos los filósofos puedan comer con la misma frecuencia.

## **9. ¿Cuál es la suposición optimista realizada en el algoritmo de detección de interbloqueos y cómo podría violarse esta suposición?**

### **Respuesta**

La suposición optimista realizada en el algoritmo de detección de interbloqueos es que el sistema puede recuperarse de un interbloqueo si se detecta y se eliminan uno o varios de los procesos implicados. Esta suposición podría violarse si los procesos tienen efectos secundarios irreversibles, como escribir en un archivo o enviar un mensaje a otro sistema. En ese caso, la eliminación de los procesos podría causar inconsistencias o pérdidas de información.