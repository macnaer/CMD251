FROM jasonrivers/nagios:latest

COPY nagios.cfg /opt/nagios/etc/nagios.cfg
COPY objects/ /opt/nagios/etc/objects/

RUN  chown -R nagios:nagios /opt/nagios/etc
    
EXPOSE 80
EXPOSE 163
