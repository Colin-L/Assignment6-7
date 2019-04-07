#!bin/sh

function recSearch {

    dirs=($(ls))
    if [ ${#dirs[@]} -gt 0 ]; then
	for i in ${dirs[*]};
	do
	    if [ -d $i ]; then
		cd $i
		recSearch
		pwd
		cd ..
	    fi
	    
	done
    fi
}
recSearch

