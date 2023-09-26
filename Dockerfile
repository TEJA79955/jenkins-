FROM maven:3.9.4-amazoncorretto-17-debian
RUN apt update && apt install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic && mvn package
EXPOSE 8080
CMD ["java" , "-jar" , "/spring-petclinic/target/spring-petclinic-3.1.0-SNAPSHOT.jar"]

