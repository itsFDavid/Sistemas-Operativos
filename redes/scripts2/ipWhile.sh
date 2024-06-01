echo "Dime el segmento de red a trabajar"
read x
echo "Dime el numero de host inicial"
read y
echo "Dime el numero de host final"
read z

while [ $y -le $z ]
do
	sudo /sbin/iptables -A INPUT -p tcp -s $x$y --dport 22 -j DROP
	echo "Ip bloqueada: "$x$y
	y=`expr $y \+ 1`
done
sudo /sbin/iptables -nL
