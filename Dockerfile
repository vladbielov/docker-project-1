FROM ubuntu
MAINTAINER Vladyslav Bielov
RUN apt-get update -y && apt-get install -y maven && apt-get install -y default-jdk && apt-get install -y git
RUN git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic $$ ./mvnw package
EXPOSE 8080
CMD ["java", "-jar", "target/*.jar";]

