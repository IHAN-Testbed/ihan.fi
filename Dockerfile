FROM nginx:1.20

ENV PORT=8080
ENV HOSTNAME=ihan.fi

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/templates /etc/nginx/templates
COPY html /usr/share/nginx/html/main
