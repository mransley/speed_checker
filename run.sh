RESULT=`speedtest --accept-license --format=json-pretty | jq`
echo $RESULT > result.json
curl $URL -X POST  -u $USERNAME:$PASSWORD -d @result.json -H "Content-Type: application/json"
