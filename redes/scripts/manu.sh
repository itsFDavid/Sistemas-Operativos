while true
do
	echo ""
	echo "Menu Principal"
	echo ""
	echo "Escoja una opcion: "
	echo ""
	echo "[ 1 ] - Denegar Ping Remoto (ip)"
	echo "[ 2 ] - Permitir Ping remoto (ip)"
	echo "[ 3 ] - Denegar puerto logico 22 (ip)"
	echo "[ 4 ] - Permitir puerto logico 22 (ip)"
	echo "[ 5 ] - Denegar puerto logico 22 (rango de ip´s)"
	echo "[ 6 ] - Permitir puerto logico 22 (rango de ip's)"
	echo "[ 7 ] - Denegar puerto logico 22 (Direccion Mac)"
	echo "[ 8 ] - Permitir puerto logico 22 (Direccion Mac)"
	echo "[ 9 ] - Revisar estado de las reglas"
	echo "[ 10 ] - Salir"
	read x
	
	case $x in
		1)	
			clear
			echo "Seleccionaste opcion 1"
			./DenegarPingIp.sh
			;;
		2)
			clear
			echo "Seleccionaste opcion 2"
			./PermitirPingIp.sh
			;;
		3)
			clear
			echo "Seleccionaste opcion 3"
			./DenegarP22.sh
			;;
		4)
			clear
			echo "Selecionaste opcion 4"
			./PermitirP22.sh
			;;
		5)
			clear
			echo "Seleccionaste opcion 5"
			./DenegarP22r.sh
			;;	
		6)
			clear
			echo "Selecionaste opcion 6"
			./PermitirP22r.sh
			;;
		7)
			clear
			echo "Seleccionaste opcion 7"
			./DenegarP22m.sh
			;;
		8)
			clear
			echo "Selecionaste opcion 8"
			./PermitirP22m.sh
			;;
		9)
			clear
			echo "Seleccionaste opcion 9"
			sudo /sbin/iptables -nL
			;;
		10)
			clear
			echo "Seleccionaste Salir"
			echo "Adios."
			exit
			;;
		*)
			clear
			echo "Opcion no valida, seleccione una dento de las opciones"
			;;
		
	esac
done
