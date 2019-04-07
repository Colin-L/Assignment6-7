#!bin/bash

function recursiveSearch
{

	if [ -e "$filename" ]; then
<<<<<<< HEAD

=======
	    #this is where its changed
	    ls -i | grep $filename
>>>>>>> inode
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




