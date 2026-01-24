FROM jasonrivers/nagios:latest

COPY nagios.cfg /opt/nagios/etc/nagios.cfg
COPY objects/ /opt/nagios/etc/objects/

    
EXPOSE 80
EXPOSE 163
