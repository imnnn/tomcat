FROM tomcat:8.5.40-jre8

COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
    #apt-get install apt-utils -y --allow-unauthenticated --fix-missing && \
    apt-get install vim -y --allow-unauthenticated --fix-missing && \
    apt-get install tree -y --allow-unauthenticated --fix-missing

#CMD ["catalina.sh","run"]
