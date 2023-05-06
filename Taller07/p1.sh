#!/bin/bash

# Lee el archivo .bash_history que contiene los comandos ejecutados en la terminal
cat ~/.bash_history | sort | uniq -c | sort > "history.txt"

# Imprime el número de comandos en el historial
echo "El número de comandos en el historial es:"
wc -l <  history.txt

# Imprime los comandos
echo "Los comandos son:"
cat history.txt
