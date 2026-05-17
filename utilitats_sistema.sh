#!/bin/bash

# Funció: benvinguda
# Paràmetre $1: nom de l'alumne
# Mostra un missatge de benvinguda personalitzat
benvinguda() {
    local nom=$1
    echo "Hola $nom, anem a comprovar el sistema"
}

# Funció: comprova_usuari
# Paràmetre $1: nom d'usuari a verificar
# Comprova si l'usuari existeix al fitxer /etc/passwd
comprova_usuari() {
    local usuari=$1
    if grep -q "^$usuari:" /etc/passwd; then
        echo "L'usuari '$usuari' existeix al sistema."
    else
        echo "L'usuari '$usuari' NO existeix al sistema."
    fi
}

# Funció: calculadora_espai
# Sense paràmetres
# Mostra l'espai lliure de la partició principal (/) amb df -h
calculadora_espai() {
    echo "=== Espai lliure a la partició / ==="
    df -h /
}

# --- Lògica principal ---

read -p "Introdueix el teu nom: " nom_alumne
benvinguda "$nom_alumne"

read -p "Introdueix un nom d'usuari a comprovar: " nom_usuari
comprova_usuari "$nom_usuari"

calculadora_espai
