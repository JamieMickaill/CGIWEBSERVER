cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl -I localhost:8070/cgibin/hello.sh/ | grep '200 OK' | diff - greetings_status_expected.out 
kill $PID
