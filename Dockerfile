FROM nginx
ADD index.html /usr/share/nginx/html/
ADD default.conf /etc/nginx/conf.d/
ARG VERSION
RUN sed -i "s/vers/$VERSION/" /usr/share/nginx/html/index.html