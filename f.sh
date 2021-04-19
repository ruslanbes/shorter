echo "f - search file by name"
function f() { 
    find . -iname "*$1*" ${@:2} 2>&1 | grep -v 'Permission denied\|Operation not permitted' 
}