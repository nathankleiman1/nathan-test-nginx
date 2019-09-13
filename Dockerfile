FROM nginx
ADD index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/
ARG VERSION
RUN chmod 755 /usr/share/nginx/html/index.html
RUN sed -i "s/vers/$VERSION/" /usr/share/nginx/html/index.html