#! /bin/bash
export PATH=$PATH:/usr/bin
echo Loading server...
nohup java -jar prevent_server.jar > output.log 2>&1 &
echo Done!
echo 'Set global script'
export PATH=$PATH:`pwd`
chmod 777 "`pwd`/lalog"
echo Now the server is going to run on background...
