FROM tomcat:8.5.40-jre8

COPY sources.list /etc/apt/sources.list
COPY server.xml /usr/local/tomcat/conf/server.xml

RUN apt-get update && \
    #apt-get install apt-utils -y --allow-unauthenticated --fix-missing && \
    apt-get install vim -y --allow-unauthenticated --fix-missing && \
    apt-get install tree -y --allow-unauthenticated --fix-missing

#correct data and time.
RUN echo "Etc/UTC+8" > /etc/timezone && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#CMD ["catalina.sh","run"]
