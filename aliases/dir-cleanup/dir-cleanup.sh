echo "Cleanup directory"

function dir-cleanup() { 
    if [ -z $1 ]; then
        echo "Usage: cleandir <path-to-directory>"
        echo "Example: cleandir ./test"
        echo "All files will be removed"
    else
        echo "Removing files:"
        find $1 -depth 1 -iregex '\./[^.].*' -exec rm -rfv {} +
    fi
}
