HASH=`cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1`
MSG=$HASH
if [ "$?" -eq 0 ]
  then
    MSG=$1
fi
echo $HASH >> strings.txt
git commit -am "$MSG" && git push