echo "Use fzf to quickly cd into directories relative to the current one, mnemonic 'jump here'"
jh(){
    local dir
    dir=$(find $PWD -type d -not -path '*/\.*' -maxdepth 3 -print 2> /dev/null | fzf +m) \
        && cd "$dir"
}
