FROM alpine:latest

LABEL MAINTAINER="renkeju <renkeju@gmail.com>"

## install and deploy
RUN apk add --no-cache wget \
    wget --no-check-certificate https://linuxdot.net/down/jexus-6.2.x-x64.tar.gz \
    tar xf jexus-6.2.x-x64.tar.gz -C /usr \
    rm jexus-6.2.x-x64.tar.gz \
    mkdir -c /var/www/default

# Expost ports
EXPOSE 80 443
# Define volumes
VOLUME ["/usr/jexus/siteconf", "/usr/jexus/log", "/var/www"]
# Define workdir
WORKDIR /usr/jexus
# Define startup command;
CMD ["/usr/jexus/jwss"]