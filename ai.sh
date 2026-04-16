#!/bin/bash

# Comprovem si s'han passat paràmetres
if [ $# -eq 0 ]; then
    echo "Ús: ./ai.sh paquet1 paquet2 ..."
    exit 1
fi

# Actualitzar el sistema
apt update

# Actualitzar paquets instal·lats
apt upgrade -y

# Instal·lar els paquets rebuts com a paràmetres
apt install -y $@


