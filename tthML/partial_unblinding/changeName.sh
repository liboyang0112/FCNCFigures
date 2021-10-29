for file in `ls ./*.pdf`
do
	if [[ $file =~ "tuH" ]];then
		echo hahha
	else
		file_=`basename ${file}`
    	mv ${file_} tcH_${file_} 
    fi
done