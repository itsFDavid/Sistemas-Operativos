echo "Dime un Numero"
read x
y=1
while [ $y -le 10 ]
	do
	r=`expr $y \* $x`
	echo $y " * " $x " = " $r
	y=`expr $y + 1`
	done
 
