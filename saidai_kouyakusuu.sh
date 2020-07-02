#!/bin/bash

if [ $# != 2 ]; then
	echo "ERROR"
	exit 0
fi

for i in $1 $2
do
	expr "$i" + 1 >&/dev/null
        ret=$?

        if [ $ret -gt 1 ]; then
	        echo "ERROR"
		exit 0

	fi
done

echo "入力された数値　$1と$2"

max=0

for i in `seq $1`
do
	y=`expr $1 / $i`
	x=`expr $1 % $i`

	if [ $x = 0 ]; then
		for j in `seq $2`
		do
			z=`expr $2 / $j`
			w=`expr $2 % $j`

			if [ $w = 0 ] && [ $z = $y ] && [ $max -lt $y ] ; then
		       
				max=$y
		       
	       		fi
		done
	fi
done

echo "最大公約数"
echo $max


