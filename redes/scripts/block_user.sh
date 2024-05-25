echo "Dime la Ip a bloquear por el puerto 22"
echo "Ej. 192.168.1.5"
read x


echo "Bloqueando ip..."
echo "Ejecutando script"
echo "/sbin/iptables -A INPUT -p tcp -s $x -j DROP"
sudo /sbin/iptables -A INPUT -p tcp -s $x -j DROP
echo "ip bloqueada exitosamente: $x"
echo ""

while true
	do
	sudo /sbin/iptables -nL

	echo "Desea borrar la regla"	
	echo "[ 1 ] - Si"
	echo "[ 2 ] - Salir"
	read y
	
	case $y in
		1)
		 	sudo /sbin/iptables -D INPUT -p tcp -s $x -j DROP
			;;
		2)	
			echo "Saliendo del firewall"
			exit
			;;
	esac
done


