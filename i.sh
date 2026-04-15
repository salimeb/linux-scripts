#!/bin/bash

# Paquets a instal·lar
PAQUETS="vim git curl"

# Actualitzar el sistema
apt update

# Actualitzar paquets instal·lats
apt upgrade -y

# Instal·lar els paquets definits a la variable
apt install -y $PAQUETS
