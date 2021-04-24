FROM maven as build_server
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:8
COPY --from=build_server /app/* /usr/local/tomcat/webapps/
EXPOSE 80
