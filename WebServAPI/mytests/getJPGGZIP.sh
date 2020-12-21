cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl -H "Accept-Encoding: gzip" localhost:8070/cash.jpg > cash1.jpg.gz
gunzip cash1.jpg.gz
cat cash1.jpg | diff - ../files/cash.jpg
kill $PID