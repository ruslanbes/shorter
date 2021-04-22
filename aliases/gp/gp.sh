echo "Git add all and push"

function gp() {
    if [ $# -eq 0 ]
    then
        echo "No arguments supplied"
        exit
    fi
    git add . && git commit -m "$@" && git push
}