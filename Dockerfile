FROM ubuntu:19.04

RUN apt-get update && apt-get install apache2 wget -y && rm -rf /var/lib/apt/lists/*
RUN wget https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_amd64.deb
RUN dpkg -i mod-pagespeed-*.deb && apt-get -fy install --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN rm mod-pagespeed-*.deb  
