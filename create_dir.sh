#!/bin/bash


mkdir test_dir


for x in {1..500}; do
	mkdir test_dir/sub_dir_$x;
	touch test_dir/sub_dir_$x/testfile.txt;
	echo 'Firstline\nSecondline\nThirdline\nFourthline\nFifthline'>>test_dir/sub_dir_$x/testfile.txt;
done

