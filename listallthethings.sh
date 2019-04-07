#!bin/bash

function recursiveSearch
{

	if [ -e "$filename" ]; then
	    ls -i | grep $filename

	else

		dirs=($(ls))
		if [ ${#dirs[@]} -gt 0 ]; then

			for dir in  ${dirs[*]}
			do
				if [ -d $dir ];then
					cd $dir
					pwd
					recursiveSearch $filename
					cd ..
				fi
			done
		fi
	fi
}



for filename in $@
do
        recursiveSearch $filename
done




