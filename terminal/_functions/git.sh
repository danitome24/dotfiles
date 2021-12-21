function gcs() {
  git add .
  git commit -m "gitlab #$1 - /: $2"
}

function gr() {
    git status
    git add .
    git stash save
    git reload
    git stash apply
}
