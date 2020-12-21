cd ..
python3 webserv.py config.cfg &
PID=$!
cd -
python3 ../webserv.py broken_config2.cfg | diff - missing_field.out
kill $PID

