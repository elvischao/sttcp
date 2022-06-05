FROM openjdk:8-jre
#时区 
RUN echo "Asia/Shanghai" > /etc/timezone

RUN mv /etc/localtime /etc/localtime_bak

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
WORKDIR /opt/docker/myserver/
EXPOSE 34567
CMD java -cp TcpServer.jar com.wizinno.shuhao.tccp.Enter
