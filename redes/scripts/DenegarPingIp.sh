echo "Ingresa una ip a restringir los paquetes icmp (ping)"
read x

echo "Restringiendo..."
sudo /sbin/iptables -A INPUT -p icmp -s $x -j DROP
echo "Regla colocada."

