# Sử dụng image của Tomcat làm base image
FROM tomcat:9.0.65-jdk11-openjdk

# Sao chép file WAR vào thư mục webapps của Tomcat
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war

# Mở port 8080 để truy cập vào ứng dụng
EXPOSE 8089

# Lệnh khởi động Tomcat khi container chạy
CMD ["catalina.sh", "run"]
