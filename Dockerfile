FROM java:8-jre-alpine 
VOLUME /tmp
ADD hello-controller-sample-1.0.0.jar hello-controller-sample-1.0.0.jar
EXPOSE 8080
RUN sh -c 'touch /hello-controller-sample-1.0.0.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/hello-controller-sample-1.0.0.jar"]
