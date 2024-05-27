

echo "Dime la IP a bloquear por el puerto 22"
echo "Ej. 192.168.1.5"
read x

echo "Bloqueando IP..."
echo "Ejecutando script"

# Crear una regla de pf en un archivo temporal
rule="block in proto tcp from $x to any port 22"

# Añadir la regla al archivo de configuración de pf
echo $rule | sudo tee -a /etc/pf.conf > /dev/null

# Aplicar la nueva configuración
sudo pfctl -f /etc/pf.conf
sudo pfctl -e

echo "IP bloqueada exitosamente: $x"
echo ""

while true
do
    sudo pfctl -sr

    echo "Desea borrar la regla"
    echo "[ 1 ] - Si"
    echo "[ 2 ] - Salir"
    read y

    case $y in
        1)
            echo "Quitando regla..."
            sudo sed -i '' "/$rule/d" /etc/pf.conf
            sudo pfctl -f /etc/pf.conf
            echo "Regla eliminada satisfactoriamente."
            ;;
        2)
            echo "Saliendo del firewall"
            exit
            ;;
        *)
            echo "Opción no válida. Por favor, elige 1 o 2."
            ;;
    esac
done
