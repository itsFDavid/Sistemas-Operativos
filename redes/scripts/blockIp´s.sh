echo "Dime la ip del rangpo inicial a bloquear"
echo "Ejemplo: 192.168.1.5"
read x
echo "Dime la ip del rango final a bloquar"
echo "Ejemplo: 192.168.1.100"
read y


echo "Ejecutando codigo..."
echo "/sbin/iptables -A INPUT -m iprange --src-range $x-$y -p tcp --dport 22 -j DROP"
/sbin/iptables -A INPUT -m iprange –dst-range $x-$y -p tcp --dport 22 -j DROP
echo "Rango de ip´s bloqueadas $x - $y"
echo ""
