#!/bin/bash
/apache-tomcat-8.0.22/bin/shutdown.sh
/apache-tomcat-8.0.22/bin/startup.sh

tail -f /apache-tomcat-8.0.22/logs/catalina.out

