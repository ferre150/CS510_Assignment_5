#!/bin/bash

cd test_dir;
for x in *;do
	y=$(echo $x|awk '{print substr($0,length($0),1)}')
	cd $x
	if [ $y -eq 1 ]; then
		sed -i '.bak' '4s/.*/eat\ beats/' testfile.txt
	elif [ $y -eq 4 ]; then
		sed -i '.bak' '4s/.*/squash\ are\ great/' testfile.txt
	elif [ $y -eq 5 ]; then
		sed -i '.bak' '4s/.*/dogs\ are\ better\ than\ cats/' testfile.txt
	elif [ $y -eq 7 ]; then
		sed -i '.bak' '4s/.*/hello\ world/' testfile.txt
	elif [ $y -eq 0 ]; then
		sed -i '.bak' '4s/.*/Noah\ is\ cool/' testfile.txt
	else 
		sed -i '.bak' '4s/.*/\ /' testfile.txt  
	fi
	cd ..
done

cd .. 
