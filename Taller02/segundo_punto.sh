#!/bin/bash

v1=($(cat carpeta/archivo1))
v2=($(cat carpeta/archivo2))

resultado=()
for i in "${!v1[@]}"; do
 suma=$(( ${v1[$i]} + ${v1[$i]} ))
 resultado+=($suma)
done

echo "La suma es: ${resultado[@]}"

echo "${resultado[@]}" > carpeta/suma

echo "Se han sumado los vectores y se guardaron en ./carpeta/suma"
