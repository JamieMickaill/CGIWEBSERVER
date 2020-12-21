readMe!

Hi there, welcome to the readMe for webserv.py

This is a simple program which when run, will construct a webserver that can handle 
multiple connections and execute applications compliant with a subset of 
the Common Gateway Interface specification.

useage "python3 webserv.py config.cfg"

**** config.cfg is required as an arguement otherwise an error will be raised.

The config contains the variables needed to initialize and establish a server connection.

This program is capable of handling GET and HEAD http requests and CGI requests concurrently.
These requests are parsed by the program, which interprets the request and constructs the correct
response based on the formatting guidelines for HTML/1.1.

This program is also capable of handling compression - utilizing the gzip module for compression of files for output

To test functionality of the program, try the included tests, or your own, using the curl command.

In essence, the program will
* Load a config file
* Create a socket, listen for connections
* Accept connections, creating a new thread
* Interpret request, fork and exec for CGI, otherwise open file and read bytes.
* Construct HTML/1.1 style response and return to client.


Testcases
* Testcases are bash scripts which compare actual and expected output of the program
* testcases utilize files within the ./cgibin and ./files directories
* config files are listed within the root folder, ensure to use the correct path for your desired program!

Testcase coverage:

Multiple GET static filetypes

- getJPG.sh - gets jpg image
- getXML.sh - gets XML file output
- getCSS.sh - gets CSS file output
- greetings_status.sh - html status 
- index_status.sh - get html status of index 
- index_test.sh - check index redirect 
- js_test.sh - test javascript output
- greetings_test.sh - test html page
- greetings_status.sh - test html page

- 404test.sh - invalid html file requested
- getJPGfail.sh - invalid image file requested

Multiple CGI requests

- CGI_JAVA.sh - tests output for java programs
- cgibin__hellotestshell.sh - tests output of running a shell script within a forked child process
- CGI_Shell_Status.sh - gets status of CGI Shell request
- CGIPY_Content_Check.sh - gets content of CGI output body from a python script

- CGI_ERROR.sh - invalid config used (python path for bash file)

Concurrent requests

- concurTest.sh - runs multiple instances of a python program which is set to sleep upon opening 

CGI Custom status

- CGI_CUSTOM_TEST.sh - tests for inclusion of custom status in CGI output

GZIP Extension tests

- getJPGGZIP.sh - sends compressed JPG to the client, output is decompressed and checked with original file
- cgibin_hellotestshellGZIP - tests compressed CGI output with a shell script
- getJPGGZIP_STATUS.sh - retieves header for ACccept-encoding gzip request

Config

- missing_field.sh - tests output for missing port data in config.
- missing_field1.sh - no staticfile directory
- missing_field2.sh - no cgibin directory
- missing_arg.out - no config passed in.
- invalid path - incorrect path. 
- differentPortTestIndex.sh - testing different port 8071

