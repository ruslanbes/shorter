echo "Rebases changes. (Default - to main)"

function git-rebase(){
    CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

    if [ -z "$1" ]
    then
        TARGET_BRANCH=main;
    else 
        TARGET_BRANCH=$1
    fi

    if [ `git rev-parse --verify $TARGET_BRANCH 2>/dev/null` ]
    then
        echo "Branch $TARGET_BRANCH exists"
    else
        echo "Branch $TARGET_BRANCH does not exist, aborting"
        return
    fi

    echo "Rebasing $CURRENT_BRANCH onto $TARGET_BRANCH"

    if [ -z "$(git status --porcelain)" ]; then 
        echo "Repositry is clean. Continue..."
        git checkout $TARGET_BRANCH
        git pull
        git checkout $CURRENT_BRANCH
        git reset $(git merge-base $TARGET_BRANCH $CURRENT_BRANCH)
        git add -A

        echo "1. Review and commit the changes"
        echo "2. Push: git push --force"
    else 
        echo "Repository is not clean, aborting"
    fi
    
}
