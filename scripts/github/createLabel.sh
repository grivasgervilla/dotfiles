USERNAME=$(git config user.name)
REPONAME=$(basename `git rev-parse --show-toplevel`)
labels=(bug documentation feature helpwanted)

declare -A string=(
    [bug]=":bug: bug"
    [documentation]=":memo: documentation"
    [feature]=":sparkles: feature"
    [helpwanted]=":pray: help wanted"
)

for label in "${labels[@]}"; do
    gh api --silent repos/$USERNAME/$REPONAME/labels -f name="${string[$label]}" -f color="FFFFFF"
done
