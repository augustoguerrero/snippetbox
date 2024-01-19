FROM nginx:alpine
WORKDIR /app
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./tls/certs/* /etc/ssl/certs/
COPY ./tls/private/* /etc/ssl/private/
