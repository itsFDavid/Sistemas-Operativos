while true
	do
	echo ""
	echo "Menu Principal"
	echo "[ 1 ] - Tabla de multiplicar"
	echo "[ 2 ] - Factorial de X numero"
	echo "[ 3 ] - Tablas de multiplicar"
	echo "[ 4 ] - Pitagoras"
	echo "[ 5 ] - Edad"
	echo "[ 6 ] - Control"
	echo "[ 7 ] - Salir"
	echo ""
	echo "Seleccione una opcion"
	read x
	echo ""
	case $x in
		1) 
			clear
			./tablaMulti.sh
		   	;;
		2) 
			clear
			./factorial.sh
			;;
		3) 	
			clear
			./tablasMulti.sh
			;;
		4) 
			clear
			./ej1.sh
			;;
		5)
			clear
			./ifAnidado.sh
			;;
		6)
			clear
			./ej2.sh 
			;;
		7)
			exit
			;;
	esac
	done
