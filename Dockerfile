# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
ARG artifact=target/weatherPrediction-0.0.1-SNAPSHOT.war

WORKDIR /opt/app

COPY ${artifact} weather.war

# This should not be changed
ENTRYPOINT ["java","-jar","weather.war"]