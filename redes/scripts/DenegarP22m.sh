echo "Ingresa Direccion Mac a denegar"
read x

echo "Denegando puerto 22 a direccion mac: $x"
sudo /sbin/iptables -A INPUT -m mac --mac-source $x -j DROP
echo "Direccion mac denegada: $x"
