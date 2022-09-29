#!/bin/zsh

echo "Loaded aliases:"

for aliasPath in ${0:a:h}/aliases/**/*(.); do
	#echo $aliasPath
	aliasName=$(basename $aliasPath)
	echo -n "- $aliasName\t: "
	source $aliasPath
done
unset aliasName

echo ""