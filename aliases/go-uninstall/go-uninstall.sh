echo "Uninstall a tool installed with go install"

function go-uninstall() { 
    if [ -z $1 ]; then
        echo "Usage: go-uninstall <tool>"
    else
        go clean -modcache && rm $(go env GOPATH)/bin/$1 
    fi
}
