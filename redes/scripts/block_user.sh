echo "Dime la Ip a bloquear por el puerto 22"
echo "Ej. 192.168.1.5"
reax x


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
	read y
	
	case in $y
		1)
			sudo /sbin/iptables -D INPUT -p tcp -s $x -j DROP
			,,
	esac
done


