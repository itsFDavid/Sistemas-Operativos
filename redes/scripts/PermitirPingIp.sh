echo "Ingresa Ip a permitir paquetes icmp (ping)"
read x

echo "Permtitiendo ping con la ip: $x"
sudo /sbin/iptables -D INPUT -p icmp -s $x -j DROP
echo "Se permitio ping con la ip: $x"
