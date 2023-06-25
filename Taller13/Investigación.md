### Javier Andrés Sarmiento Salazar - 2192511
### Sistemas Operacionales 

# **Taller 13**

## **Stress-ng**
`stress-ng` es una herramienta que permite realizar pruebas de estrés en un sistema Linux de diversas maneras seleccionables. Fue diseñada para ejercitar varios subsistemas físicos de una computadora, así como las diversas interfaces del kernel del sistema operativo. `stress-ng` también tiene una amplia gama de pruebas de estrés específicas para la CPU que ejercitan operaciones de punto flotante, enteros, manipulación de bits y control de flujo. `stress-ng` fue diseñado originalmente para hacer que una máquina trabaje duro y provoque problemas de hardware, como sobrecalentamientos térmicos, así como errores del sistema operativo que solo ocurren cuando un sistema está siendo sometido a un estrés intenso. Se debe usar `stress-ng` con precaución ya que algunas de las pruebas pueden hacer que un sistema se caliente en hardware mal diseñado y también puede causar un excesivo desgaste del sistema que puede ser difícil de detener.

## **Comandos**

1. `stress-ng --cpu 8 --timeout 60s --log-file cpu_$i.txt --metrics-brief`: Este comando ejecuta una prueba de estrés en la CPU utilizando 8 trabajadores (`--cpu 8`) durante 60 segundos (`--timeout 60s`). Los resultados de la prueba se guardan en un archivo de texto llamado `cpu_$i.txt`, donde `$i` es el número de la iteración actual del bucle. La opción `--metrics-brief` indica que se deben guardar métricas resumidas en el archivo de registro.

2. `stress-ng --vm 4 --vm-bytes 1G --timeout 60s --log-file memory_$i.txt --metrics-brief`: Este comando ejecuta una prueba de estrés en la memoria utilizando 4 trabajadores (`--vm 4`) y asignando 1 GB de memoria a cada trabajador (`--vm-bytes 1G`) durante 60 segundos (`--timeout 60s`). Los resultados de la prueba se guardan en un archivo de texto llamado `memory_$i.txt`, donde `$i` es el número de la iteración actual del bucle. La opción `--metrics-brief` indica que se deben guardar métricas resumidas en el archivo de registro.

3. `stress-ng --fork 8 --timeout 60s --log-file process_$i.txt --metrics-brief`: Este comando ejecuta una prueba de estrés en los procesos e hilos del sistema utilizando 8 trabajadores (`--fork 8`) durante 60 segundos (`--timeout 60s`). Los resultados de la prueba se guardan en un archivo de texto llamado `process_$i.txt`, donde `$i` es el número de la iteración actual del bucle. La opción `--metrics-brief` indica que se deben guardar métricas resumidas en el archivo de registro.

## **Máquina**

- **Procesador:** AMD Ryzen 3 5300U
- **Memoria RAM:** 16 GB 3200 MT/s
- **Sistema Operativo:** Ubuntu 23.04 Lunar Lobster

Cabe aclarar que esta prueba no se realizó en una máquina virtual, sino en una máquina física. Esto se debe a que las máquinas virtuales no permiten el acceso a todos los recursos de la máquina física, por lo que los resultados de la prueba no serían los esperados.

## **Resultados**

### **CPU**

1. Prueba de estrés en la CPU: Esta prueba se realizó utilizando el comando `stress-ng --cpu 8 --timeout 60s --log-file cpu_$i.txt --metrics-brief`, que ejecuta una prueba de estrés en la CPU utilizando 8 trabajadores durante 60 segundos. Los resultados de la prueba muestran que el número de operaciones bogo por segundo varía entre aproximadamente 8516 y 9485. Las operaciones bogo son operaciones ficticias utilizadas por `stress-ng` para medir el rendimiento del sistema en las pruebas de estrés. En este caso, el número de operaciones bogo por segundo indica el rendimiento de la CPU en la ejecución de operaciones durante la prueba de estrés.

![CPU](https://raw.githubusercontent.com/Sarmient02/Talleres_SistemasOperacionales/main/Taller13/img/CPU.png)


### **Memoria**

2. Prueba de estrés en la memoria: Esta prueba se realizó utilizando el comando `stress-ng --vm 4 --vm-bytes 1G --timeout 60s --log-file memory_$i.txt --metrics-brief`, que ejecuta una prueba de estrés en la memoria utilizando 4 trabajadores y asignando 1 GB de memoria a cada trabajador durante 60 segundos. Los resultados de la prueba muestran que el número de operaciones bogo por segundo varía entre aproximadamente 99148 y 99947. En este caso, el número de operaciones bogo por segundo indica el rendimiento del sistema en la gestión de la memoria durante la prueba de estrés.

![Memoria](https://raw.githubusercontent.com/Sarmient02/Talleres_SistemasOperacionales/main/Taller13/img/Memory.png)

### **Procesos**

3. Prueba de estrés en los procesos e hilos del sistema: Esta prueba se realizó utilizando el comando `stress-ng --fork 8 --timeout 60s --log-file process_$i.txt --metrics-brief`, que ejecuta una prueba de estrés en los procesos e hilos del sistema utilizando 8 trabajadores durante 60 segundos. Los resultados de la prueba muestran que el número de operaciones bogo por segundo varía entre aproximadamente 13151 y 13868. En este caso, el número de operaciones bogo por segundo indica el rendimiento del sistema en la creación y gestión de procesos e hilos durante la prueba de estrés.

![Procesos](https://raw.githubusercontent.com/Sarmient02/Talleres_SistemasOperacionales/main/Taller13/img/Process.png)

### Estos resultados muestran que el rendimiento del sistema en las pruebas de estrés varía ligeramente entre cada ejecución, pero se mantiene en un rango similar. Esto indica que el sistema es capaz de mantener un rendimiento estable en las pruebas de estrés, lo que indica que el sistema es estable y no presenta problemas de hardware o software.

## **Referencias**

- https://wiki.ubuntu.com/Kernel/Reference/stress-ng