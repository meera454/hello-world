#!/bin/bash
#the script is to print the total no of line of all files in a directory/folder

if [ $# -lt "1" ]; then
echo -e  "\n\tPlease Enter the Path: \n"
exit 1
fi

count=0 
touch ./counttest.txt

if [  -d "$1" ];then
        if [  `ls $1 | wc -l` == 0 ]; then
		echo -e "\n\tHello..!! >  ### The entered path is -> EMPTY <-  ###\n"
			exit 1
	else
		echo -e "\nYour DIR/FOLDER PATH: $1 \n"
		for i in `ls $1`
			do
				if [ -f $1/$i ]; then
					cat $1/$i  >> counttest.txt 2> /dev/null
					count=$((count + 1))
				fi
		done
																								        fi
	totan_no_lines=`cat counttest.txt | wc -l`
	echo -e "Totle no.of Lines of All Files in $1 are: $totan_no_lines\n"
	echo "No. files are $count"
	rm -rf ./counttest.txt
	exit 0
else
	echo -e "\n\tHello..!! >  ###The entered path is not exit###\n"
fi

