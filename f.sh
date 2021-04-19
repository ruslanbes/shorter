echo "File search functions: f - search by name"
function f() { 
    find . -iname "*$1*" ${@:2} 2>&1 | grep -v 'Permission denied\|Operation not permitted' 
}