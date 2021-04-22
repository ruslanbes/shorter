echo "Cleanup local orphaned branches"
function git-clean-branches(){
    git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
}
