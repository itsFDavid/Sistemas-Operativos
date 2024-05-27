#!/bin/bash

echo "Dime la IP del rango inicial a bloquear"
echo "Ejemplo: 192.168.1.5"
read x
echo "Dime la IP del rango final a bloquear"
echo "Ejemplo: 192.168.1.100"
read y

echo "Ejecutando código..."

# Crear una regla de pf en un archivo temporal
rule="block in from $x to $y port 22"

# Añadir la regla al archivo de configuración de pf
echo $rule | sudo tee -a /etc/pf.conf > /dev/null

# Aplicar la nueva configuración
sudo pfctl -f /etc/pf.conf
sudo pfctl -e

echo "Rango de IPs bloqueadas: $x - $y"
echo ""

while true
do
    echo "Las reglas contienen esto:"
    sudo pfctl -sr
    echo "¿Desea quitar la regla?"
    echo "[ 1 ] - Sí"
    echo "[ 2 ] - Salir"
    read z
    case $z in
        1)
            echo "Quitando regla..."
            sudo sed -i '' "/$rule/d" /etc/pf.conf
            sudo pfctl -f /etc/pf.conf
            echo "Regla eliminada satisfactoriamente."
            ;;
        2)
            echo "Saliendo del programa"
            echo "Las reglas que se mantienen son:"
            sudo pfctl -sr
            exit
            ;;
        *)
            echo "Opción no válida. Por favor, elige 1 o 2."
            ;;
    esac
done
