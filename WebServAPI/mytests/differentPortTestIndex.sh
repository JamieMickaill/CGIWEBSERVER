cd ..
python3 webserv.py configPort.cfg &
PID=$!
sleep 1
cd -
curl -i localhost:8070/ | diff - port2out.out 
kill $PID
