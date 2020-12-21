cd ..
python3 webserv.py configBash.cfg &
PID=$!
sleep 1
cd -
curl  -H "Accept-Encoding: gzip" localhost:8070/cgibin/hello.sh > gzipped.txt.gz
gunzip gzipped.txt.gz
cat gzipped.txt | diff - cgi_SH.out
kill $PID
