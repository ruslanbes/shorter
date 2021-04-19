echo "Loaded aliases:"

thisFile=$BASH_SOURCE 
scriptDir=$(dirname $thisFile)
for filename in $scriptDir/*.sh; do
	if [ "$thisFile" != "$filename" ]; then	
		echo -en "- $(basename $filename)\t: "
		source $filename
	fi
done
unset thisFile
unset scriptDir

echo ""