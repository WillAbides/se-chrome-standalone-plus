FROM selenium/standalone-chrome:2.44.0

USER root
RUN apt-get -y update \
&& apt-get -y install x11vnc


EXPOSE 5900

COPY start_vnc.sh /opt/bin/start_vnc.sh
RUN chmod +x /opt/bin/start_vnc.sh

USER seluser

