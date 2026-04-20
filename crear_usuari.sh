#!/bin/bash

# Netejar la pantalla
clear

# Demanar el nom d'usuari
read -p "Nom d'usuari: " USUARI
if [ -z "$USUARI" ]; then
    echo "Error: el nom d'usuari no pot estar buit."
    exit 1
fi

# Demanar el nom complet
read -p "Nom complet: " COMENTARI
if [ -z "$COMENTARI" ]; then
    echo "Error: el nom complet no pot estar buit."
    exit 1
fi

# Demanar el grup
read -p "Nom del grup: " GRUP
if [ -z "$GRUP" ]; then
    echo "Error: el nom del grup no pot estar buit."
    exit 1
fi

# Crear el grup si no existeix
groupadd $GRUP 2>/dev/null

# Crear l'usuari
useradd -c "$COMENTARI" -g $GRUP $USUARI

# Missatge de confirmació
echo "L'usuari $USUARI s'ha creat correctament dins del grup $GRUP"
