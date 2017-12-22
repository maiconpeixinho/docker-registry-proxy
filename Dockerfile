FROM nginx:alpine

MAINTAINER Via Varejo <maicon.peixinho@viavarejo.com.br>

COPY default.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /entrypoint.sh

ENV PROXY_TIMEOUT 300s

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
