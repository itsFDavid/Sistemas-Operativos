echo "Dime un numero para obtener el factorial"
read x

a=1
b=1
c=1

while [ $b -le $x ]
	do
	a=`expr $c \* $b`
	echo $c " * " $b " = " $a
	c=`expr $a`
	b=`expr $b + 1`
	done
