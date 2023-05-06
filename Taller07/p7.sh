#!/bin/bash

# Nombre del archivo de registro
LOGFILE="system.log"

# Obtener fecha y hora
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Obtener hostname
HOSTNAME=$(hostname)

# Obtener carga del sistema
LOAD=$(uptime | awk -F'[a-z]:' '{ print $2 }')

# Obtener memoria libre
FREE_MEM=$(free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }')

# Escribir información en el archivo de registro
echo "$DATE $HOSTNAME Load: $LOAD Free memory: $FREE_MEM" >> "$LOGFILE"
