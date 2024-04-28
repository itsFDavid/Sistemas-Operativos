echo "Dame un numero"
read x
echo "Dame otro numero"
read y
if [ $x -gt $y ]
	then
	echo "El numero mayor es: " $x
	else
	echo "El numero mayor es: " $y
fi
