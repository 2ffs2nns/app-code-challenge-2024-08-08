FROM nginx:latest
LABEL maintainer="eric hoffmann <2ffs2nns@gmail.com>"

RUN mkdir -p /usr/share/nginx/html/audio
COPY src/audio/* /usr/share/nginx/html/audio/
COPY src/html/* /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
