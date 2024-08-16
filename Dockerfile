#checkov:skip=CKV_DOCKER_2: Ensure that HEALTHCHECK...
#checkov:skip=CKV_DOCKER_3: Ensure that a user...

FROM nginx:1.27
LABEL maintainer="eric hoffmann <2ffs2nns@gmail.com>"

RUN mkdir -p /usr/share/nginx/html/audio
COPY src/audio/* /usr/share/nginx/html/audio/
COPY src/html/* /usr/share/nginx/html/
COPY src/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
