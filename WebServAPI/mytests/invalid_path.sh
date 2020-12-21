cd ..
python3 webserv.py config.cfg &
PID=$!
sleep 1
cd -
py ../webserv.py invalid | diff - invalid_path.out
