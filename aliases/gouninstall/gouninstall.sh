echo "Uninstall a tool installed with go install"

function gouninstall() { 
    go clean -modcache && rm $GOPATH/bin/$1 
}
