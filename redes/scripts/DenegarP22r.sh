echo "Ingresa ip Inicial a denegar"
read x
echo "Ingresa ip Final a denegar"
read y

echo "Restringiendo rango desde $x - $y"
sudo /sbin/iptables -A INPUT -m iprange --src-range $x-$y -p tcp --dport 22 -j DROP
echo "Rango Bloqueado: $x - $y"

