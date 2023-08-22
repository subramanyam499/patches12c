 #!/bin/bash
APP=$Application
echo "you are deploying application"
 if [ $APP = "benefits" ]
 then
echo "you have selected the Application:  $APP"
 elif [ $APP = "messaging" ]
 then
echo "you have selected the Application:  $APP"
 elif [  $APP = "timesoff" ]
 then
echo "you have selected the Application:  $APP"
 else
echo " No Valid application is selected"
 fi
