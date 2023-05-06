#!/bin/bash

# Verifica que se hayan pasado 3 argumentos
if [ $# -ne 4 ]; then
    echo "Uso: $0 archivo permisos usuario grupo"
    exit 1
fi

# Asigna los argumentos a variables
archivo=$1
permisos=$2
usuario=$3
grupo=$4

# Listamos el archivo para ver sus permisos antes de cambiarlos
echo "Archivo antes de los cambios"
ls -la $archivo

# Modifica los permisos del archivo usando chmod
chmod $permisos $archivo

# Cambia el propietario y el grupo del archivo usando chown
chown $usuario:$grupo $archivo

# Listar el archivo para ver los cambios aplicados
echo "Archivo despues de los cambios"
ls -la $archivo
