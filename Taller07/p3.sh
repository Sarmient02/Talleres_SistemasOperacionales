#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 alias comando"
    exit 1
fi

alias=$1
comando=$2

echo "alias $alias='$comando'" >> ~/.bashrc
echo "Alias $alias agregado a .bashrc"
