cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl 127.0.0.1:8070/cash.jpg > cash2.jpg
cat cash2.jpg | diff - ../files/cash.jpg
kill $PID