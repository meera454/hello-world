#!/bin/bash

#Create /etc/init.d/tomcat1 with following instructions
# description: Tomcat Start Stop Restart
# processname: tomcat
# chkconfig: 234 20 80


JAVA_HOME=/usr/lib/jvm/jre-openjdk

export JAVA_HOME	#this the path where Java/JDK installed

PATH=$JAVA_HOME/bin:$PATH

export PATH

CATALINA_HOME=/opt/tomcat1 #this the path where tomcat installed

case $1 in

start)

sh $CATALINA_HOME/bin/startup.sh

;;

stop)

sh $CATALINA_HOME/bin/shutdown.sh

;;

restart)

sh $CATALINA_HOME/bin/shutdown.sh

sh $CATALINA_HOME/bin/startup.sh

;;

esac

exit 0
