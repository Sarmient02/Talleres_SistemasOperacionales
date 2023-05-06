#!/bin/bash

# Comprobar si se han pasado dos argumentos
if [ "$#" -ne 2 ]; then
    echo "Por favor, pase dos archivos como argumentos."
    exit 1
fi

file1="$1"
file2="$2"

# Mostrar el tipo de archivo
echo "Tipo de archivo de $(file "$file1")"
echo "Tipo de archivo de $(file "$file2")"

# Comparar a nivel de bytes
if cmp -s "$file1" "$file2"; then
    echo "Los archivos son iguales a nivel de bytes."
else
    echo "Los archivos son diferentes a nivel de bytes."
fi

cmp -b $file1 $file2

# Comparar a nivel de líneas y mostrar diferencias
echo "COMPARACIÓN DE ARCHIVOS:"
diff -u "$file1" "$file2"
