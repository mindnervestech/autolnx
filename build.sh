#!/bin/bash
echo "building"
cd /home/autolnx/
git pull
mvn install
echo "copying to webapp"
cp -ur /home/autolnx/target/glivr-1.0.0-BUILD-SNAPSHOT /apache-tomcat-8.0.22/webapps/
rm -r /apache-tomcat-8.0.22/webapps/glivr
mv /apache-tomcat-8.0.22/webapps/glivr-1.0.0-BUILD-SNAPSHOT /apache-tomcat-8.0.22/webapps/glivr
