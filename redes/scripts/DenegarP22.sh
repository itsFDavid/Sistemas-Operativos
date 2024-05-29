echo "Ingresa Ip a restringir el puerto logico 22"
read x

echo "Restringiendo puerto logico a la ip: $x"
sudo /sbin/iptables -A INPUT -p tcp -s $x --dport 22 -j DROP
echo "Se restrinego exitosamente el puerto 22 a la ip: $x"
