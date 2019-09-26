FROM jasonrivers/nagios:latest
MAINTAINER Gor Poghosyan <gor@poghosyan.am>

EXPOSE 80

#VOLUME "${NAGIOS_HOME}/var" "${NAGIOS_HOME}/etc" "/var/log/apache2" "/opt/Custom-Nagios-Plugins" "/opt/nagiosgraph/var" "/opt/nagiosgraph/etc"

COPY etc ${NAGIOS_HOME}/etc

CMD [ "/usr/local/bin/start_nagios" ]