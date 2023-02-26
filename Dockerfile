FROM amazoncorretto:8u362-al2

WORKDIR /usr/java-app/

COPY ./target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar /usr/java-app/

CMD [ "java", "-jar", "react-and-spring-data-rest-0.0.1-SNAPSHOT.jar" ]

EXPOSE 8080