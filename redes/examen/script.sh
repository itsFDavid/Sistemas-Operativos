echo "Ingresa tu nombre:"
read nombre
echo "Ingresa tu direccion:"
read direccion
echo "Ingresa tu puesto de trabajador:"
read p_t
echo "Ingresa tu sueldo semanal:"
read ss
echo "Ingresa tus dias trabajados:"
read dt
echo "Ingresa tus horas extras trabajadas:"
read het


echo "Tus datos son:"
echo "Nombre: $nombre"
echo "Direccion: $direccion"
echo "Puesto: $p_t"
echo "Sueldo semanal: $ss"
echo "Dias trabajados: $dt"
echo "Horas extra: $het"


if [ $dt -gt 6 ]; then
  echo "Los dias trabajados solo pueden ser un máximo de 6"
fi


if [ $het -gt 8 ]; then
  hrTriples=`expr $het - 8`
  hrDobles=8
else if [ $het -le 8 ]; then
  hrDobles=$het
  hrTriples=0
  fi
fi

echo ""
echo ""
echo "Horas dobles: $hrDobles"
echo "Horas triples: $hrTriples"


sueldohr=`expr $ss / 6 / 8`
echo "Sueldo por hora: $sueldohr"

echo ""
pagHrD=`expr $sueldohr \* $hrDobles \* 2`
pagHrT=`expr $sueldohr \* $hrTriples \* 3`

echo ""
echo "El total a pagar de horas extra son:"
echo "Horas dobles: $hrDobles ------------ $ $pagHrD"
echo "Horas triples: $hrTriples ---------- $ $pagHrT"
totalHr=`expr $pagHrD + $pagHrT`
echo "Total a pagar: $ $totalHr"

ss=`expr $ss / 6 \* $dt`
sueldoNeto=`expr $ss + $pagHrD + $pagHrT`
echo ""
echo ""
echo "Sueldo semanal: $ $ss"
echo "Tu sueldo neto antes de deducciones es: $sueldoNeto"
echo ""



if [ $sueldoNeto -le 3000 ]; then
  descLISR=`echo "$sueldoNeto * 0.08" | bc`
  
  descIMSS=`echo "$sueldoNeto * 0.05" | bc`
  
else
  descLISR=`echo "$sueldoNeto * 0.09" | bc`
  
  descIMSS=`echo "$sueldoNeto * 0.06" | bc`
 
fi

descCS=`echo "$sueldoNeto * 0.02" | bc`

descFH=`echo "$sueldoNeto * 0.02" | bc`


echo ""
echo ""
echo "Tus deducciones son:"
echo "Fondo de ahorro: $ $descFH"
echo "Cuota Sindical: $ $descCS"
echo "IMSS: $ $descIMSS"
echo "LISR: $ $descLISR"

echo ""
echo ""
totalDeducciones=`echo "$descFH + $descCS + $descIMSS + $descLISR" | bc`
echo "Total de deducciones: $ $totalDeducciones"
total=`echo "$sueldoNeto - $totalDeducciones" | bc`
echo ""
echo ""
echo "Tu sueldo neto final es: $ $total"
