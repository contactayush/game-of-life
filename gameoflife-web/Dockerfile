FROM 500132197067.dkr.ecr.ap-south-1.amazonaws.com/demo-repo:latest

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
