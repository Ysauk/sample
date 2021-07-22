#!/bin/sh
cd /app
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
cd /app/boxfuse-sample-java-war-hello
mvn package
cp /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /app/tomcat/webapps/
/app/tomcat/bin/catalina.sh run
