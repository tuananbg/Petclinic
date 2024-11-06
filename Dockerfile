FROM openjdk:8

EXPOSE 8089

ADD target/petclinic.war /opt/apache-tomcat/webapps/

ENTRYPOINT ["/opt/apache-tomcat/bin/catalina.sh", "run"]
