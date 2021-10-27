python3 get-json.py
COMMIT_MSG=`curl http://whatthecommit.com/ -s | sed -n 34p | awk -F\> '{print $2}'`
echo $COMMIT_MSG
cd easy-configs-config/
git reset --hard
git checkout master
git pull --rebase
BRANCH="update-$RANDOM-$RANDOM"
git checkout -b $BRANCH
cp ../sample.json sessions.json
git commit -am "$COMMIT_MSG"
git push --set-upstream origin $BRANCH
open "https://github.com/skalinets/easy-configs-config/pull/new/$BRANCH"


