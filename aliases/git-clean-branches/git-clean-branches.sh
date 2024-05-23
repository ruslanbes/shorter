echo "Remove branches not present on remote"

function git-clean-branches(){
    # git fetch -p
    # git remote prune origin 
    # seems that doesn't work, doesn't cleanup many dead branches.
    # https://stackoverflow.com/questions/4040717/git-remote-prune-didnt-show-as-many-pruned-branches-as-i-expected

    git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
}
