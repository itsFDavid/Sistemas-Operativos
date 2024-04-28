echo "Dime tu edad"
read x

if [ $x -le 2 ]
	then
	echo "Eres un bebe"
else
	echo " "
fi

if [ $x -gt 2 ] && [ $x -le 17 ]
	then
	echo "Eres un niño"
	else if	[ $x -gt 17 ] && [ $x -le 25 ]
		then
		echo "Eres un joven"
		else if [ $x -gt 25 ] && [ $x -le 55 ]
			then 
			echo "Eres suegro (gra)"
			else if [ $x -gt 55 ]
				then 
				echo "Eres abuelito (ta)"
			fi
		fi
	fi
fi
