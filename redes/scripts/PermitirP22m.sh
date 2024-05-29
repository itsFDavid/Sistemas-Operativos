echo "Ingresa Direccion Mac a Permitir"
read x

echo "Permitiendo puerto 22 a direccion mac: $x"
sudo /sbin/iptables -D INPUT -m mac --mac-source $x -j DROP
echo "Direccion mac permitida: $x"
