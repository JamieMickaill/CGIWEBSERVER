cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl localhost:8070/cgibin/hello.sh | diff - CGI_Shell_wrongconfig.out
kill $PID