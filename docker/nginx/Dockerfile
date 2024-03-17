FROM nginx:alpine
WORKDIR /
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY certs/* /etc/ssl/certs/
COPY private/* /etc/ssl/private/
CMD ["nginx", "-g", "daemon off;"]
