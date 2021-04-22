echo "Search by content"
function r() {
    grep "$1" ${@:2} -i -R . 
}
