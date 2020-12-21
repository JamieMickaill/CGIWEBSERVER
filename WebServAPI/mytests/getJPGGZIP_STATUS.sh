cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl -I -H "Accept-Encoding: gzip" localhost:8070/cash.jpg | diff - gzipstatus.out
kill $PID