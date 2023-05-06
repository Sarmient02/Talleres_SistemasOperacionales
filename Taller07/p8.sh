#!/bin/bash

# Nombre del archivo de registro
LOGFILE="system.log"

# Tamaño máximo (512kB)
MAXSIZE=(512*1024)

# Comprobar si el archivo existe y si supera el tamaño máximo
if [ -f "$LOGFILE" ] && [ "$(stat -c%s "$LOGFILE")" -gt "$MAXSIZE" ]; then
    # Comprimir el archivo
    tar czf "${LOGFILE}.tar.gz" "$LOGFILE"
fi
