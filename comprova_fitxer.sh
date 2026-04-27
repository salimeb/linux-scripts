#!/bin/bash

# Demanar la ruta a l'usuari
read -p "Introdueix la ruta d'un fitxer o directori: " RUTA

# Comprovar que no està buida
if [ -z "$RUTA" ]; then
    echo "No has introduït cap ruta"
    exit 1
fi

# Comprovar si existeix
if [ -e "$RUTA" ]; then

    # Comprovar si és fitxer o directori
    if [ -f "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un fitxer"
    elif [ -d "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un directori"
    fi

    # Comprovar permisos de lectura
    if [ -r "$RUTA" ]; then
        echo "Tens permisos per llegir aquest element"
    else
        echo "No tens permís de lectura"
    fi

else
    echo "Error: La ruta $RUTA no es troba en el sistema"
fi
