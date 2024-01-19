FROM nginx:alpine
WORKDIR /app
#COPY . .
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./ssl/certs/* /etc/ssl/certs/
COPY ./ssl/private/* /etc/ssl/private/
