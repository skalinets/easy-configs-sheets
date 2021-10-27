python3 get-json.py
COMMIT_MSG=`curl http://whatthecommit.com/ -s | sed -n 34p | awk -F\> '{print $2}'`
echo $COMMIT_MSG


