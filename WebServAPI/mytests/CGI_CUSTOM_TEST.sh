cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl -I localhost:8070/cgibin/CGIPY_custom.py | grep 'Status' | diff - CGI_Custom.out 
kill $PID
