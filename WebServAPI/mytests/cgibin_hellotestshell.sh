cd ..
python3 webserv.py configBash.cfg &
PID=$!
sleep 1
cd -
curl localhost:8070/cgibin/hello.sh | diff - cgi_SH.out 
kill $PID
