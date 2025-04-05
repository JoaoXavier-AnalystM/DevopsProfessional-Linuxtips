FROM ubuntu:20.04
LABEL maintainer="joaoxneto7050@gmail.com"
RUN apt-get update && apt-get install nginx curl wget -y && rm -rf /var/lib/apt/lists/*

EXPOSE 80
ADD https://github.com/prometheus/node_exporter/releases/download/v1.9.0/node_exporter-1.9.0.linux-amd64.tar.gz /root/node-exporter
COPY index.html /var/www/html/

WORKDIR /var/www/html/
ENV APP_VERSION=1.0.0

ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]

HEALTHCHECK --timeout=2s CMD curl -f localhost || exit 1 