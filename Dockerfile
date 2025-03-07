FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01734279
COPY /target/*.jar oci-microservice-a01734279.jar
COPY /src/main/resources/Wallet_Javadev101 /oci-microservice-a01734279/Wallet_Javadev101
ENV TNS_ADMIN=/oci-microservice-a01734279/Wallet_Javadev101
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01734279.jar" ]