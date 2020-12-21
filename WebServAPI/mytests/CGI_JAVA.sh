cd ..
python3 webserv.py configJAVA.cfg &
PID=$!
sleep 1
cd -
curl localhost:8070/cgibin/CGIJava.java | diff - CGI_Java.out
kill $PID
