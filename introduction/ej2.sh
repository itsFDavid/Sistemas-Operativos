a=$(date +'%Y')
echo "E año que ingresaste es: " $a
echo "En que periodo ingresaste"
echo "[1] - Si vienes de otra institucion y ingresaste en febrero"
echo "[2] - Si hiciste examen de admision en el TESJI"
read p
if [ $p -lt 1 ] || [ $p -gt 2 ]
	then
	echo "Perido no valido"
	exit;
fi
echo "Que carrera ingresaras?"
echo "[1] - Ing. Industrial"
echo "[2] - Ing. Tics"
echo "[3] - Ing. Sistemas"
echo "[4] - Ing. Quimica"
echo "[5] - Ing. Mecatronica"
echo "[6] - Ing. Civil"
echo "[7] - Ing. Logistica"
echo "[8] - Lic. Administracion"
read c

if [ $c -lt 1 ] || [ $c -gt 8 ]
	then
	echo "Valor de carrera invalido"
	exit;
fi


echo "Ingresa tu numero de alumno"
read z
#echo $z
if [ $z -le 0 ]
	then
	echo "Numero de alumno tiene que ser mayor que 0" 
	echo "Tu numero": $z
	exit;
fi

if [ $z -lt 10 ] && [ $z -gt 0 ]
	then
	echo "Tu matricula es: " $a$p$c"00"$z 
	else if [ $z -ge 10 ] && [ $z -lt 100 ]
		then
		echo "Tu matricula es: " $a$p$c"0"$z
		else if [ $z -ge 100 ] && [ $z -lt 1000 ]
			then
			echo "Tu matricula es: " $a$p$c$z
			else 
				echo "Numnero de alumno supera el limite (999)"
				echo "Tu numero ingresado: " $z
		
			
		fi
	fi
fi
