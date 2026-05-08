#!/bin/bash

# Bucle UNTIL: es repeteix fins que la ruta existeixi
until [ -e "$ruta" ]; do
    read -p "Introdueix una ruta existent (o 'sortir'): " ruta
    if [ "$ruta" == "sortir" ]; then
        echo "Sortint..."
        exit 0
    fi
    if [ ! -e "$ruta" ]; then
        echo "La ruta no és vàlida, torna-ho a intentar."
    fi
done

echo "Ruta vàlida: $ruta"

# Bucle WHILE: compte enrere fins a zero
read -p "Introdueix un número (1-5): " num

if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: ha de ser un número."
    exit 1
fi

while [ $num -gt 0 ]; do
    echo "Processant l'element en $num segons..."
    num=$((num - 1))
done

echo "Processament finalitzat!"
