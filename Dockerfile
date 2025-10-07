FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY ./ ./
RUN sed -i 's/listen\s\+80;/listen 8085;/' /etc/nginx/conf.d/default.conf
EXPOSE 8085
CMD ["nginx", "-g", "daemon off;"]
