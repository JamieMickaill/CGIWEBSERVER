cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
curl 127.0.0.1:8070/missing.html| diff - 404_expected.out 
kill $PID