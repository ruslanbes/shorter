echo "Loaded aliases:"

scriptDir=$(dirname $BASH_SOURCE)
aliasesDir="$scriptDir/aliases/*"
for aliasPath in $aliasesDir; do
	aliasName=$(basename $aliasPath)
	echo -en "- $aliasName\t: "
	source "$aliasPath/$aliasName.sh"
done
unset scriptDir
unset aliasesDir
unset aliasName

echo ""