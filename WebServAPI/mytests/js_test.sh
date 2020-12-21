cd ..
py webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl localhost:8070/home.js | diff - js_expected.out 
kill $PID
