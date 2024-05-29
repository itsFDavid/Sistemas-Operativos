echo "Ingresa ip Inicial a permitir"
read x
echo "Ingresa ip Final a permitir"
read y

echo "Permitiendo rango desde $x - $y"
sudo /sbin/iptables -D INPUT -m iprange --src-range $x-$y -p tcp --dport 22 -j DROP
echo "Rango permitido: $x - $y"
