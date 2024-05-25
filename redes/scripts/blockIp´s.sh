echo "Dime la ip del rangpo inicial a bloquear"
echo "Ejemplo: 192.168.1.5"
read x
echo "Dime la ip del rango final a bloquar"
echo "Ejemplo: 192.168.1.100"
read y


echo "Ejecutando codigo..."
echo "/sbin/iptables -A INPUT -m iprange --src-range $x-$y -p tcp --dport 22 -j DROP"
sudo /sbin/iptables -A INPUT -m iprange –dst-range $x-$y -p tcp --dport 22 -j DROP
echo "Rango de ip´s bloqueadas $x - $y"
echo ""

while true
	do
	echo "Las reglas contiene esto:"
	sudo /sbin/iptables -nL
	echo "Desea quitar la regla?"
	echo "[ 1 ] - Si"
	echo "[ 2 ] - Salir"
	read z
	case $z in
		1)
			echo "Quitando regla..."
			sudo /sbin/iptables -D INPUT -m iprange –dst-range $x-$y -p tcp --dport 22 -j DROP
			echo "Regla eliminada satisfactoriamente."
			;;
		2)
			echo "Saliendo del programa"
			echo "Las reglas que se mantienen son:"
			sudo /sbin/iptables -nL
			exit
			;;
	esac
done
