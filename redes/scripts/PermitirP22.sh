echo "Ingresa Ip a permitir el puerto logico 22"
read x

echo "Permitiendo puerto logico a la ip: $x"
sudo /sbin/iptables -D INPUT -p tcp -s $x --dport 22 -j DROP
echo "Se permitio exitosamente el puerto 22 a la ip: $x"
