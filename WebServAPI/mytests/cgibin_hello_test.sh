cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl localhost:8070/cgibin/hello.py | diff - hello_expected.out 
kill $PID
