cd ..
py webserv.py config.cfg &
PID=$!
cd -

for t in *.sh;
do
	echo t
	bash $t
done;
