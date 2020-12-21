cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl -I localhost:8070/cgibin/CGIPY.py | grep 'Content' | diff - CGI_Content.out 
kill $PID