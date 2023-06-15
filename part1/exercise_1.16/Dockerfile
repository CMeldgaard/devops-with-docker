FROM craftcms/php-fpm:8.0

ENV PHP_MAX_INPUT_VARS=10000

# install supervisor and nginx

USER root
RUN apk update --no-cache && apk add --no-cache supervisor nginx && apk add --no-cache mysql-client

#Remove blackfire
RUN rm /usr/local/etc/php/conf.d/ext-blackfire.ini

#Copy setup files
COPY .docker-config/nginx/supervisor.conf /etc/supervisor/conf.d/supervisor.conf
COPY .docker-config/nginx/nginx.conf /etc/nginx/nginx.conf
COPY .docker-config/nginx/craftcms/general.conf /etc/nginx/craftcms/
COPY .docker-config/nginx/craftcms/php_fastcgi.conf /etc/nginx/craftcms/
COPY .docker-config/nginx/craftcms/security.conf /etc/nginx/craftcms/
COPY .docker-config/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY .docker-config/php/zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf
COPY .docker-config/php/zz-quantity.ini /usr/local/etc/php/conf.d/zz-quantity.ini

RUN touch /run/nginx.pid
RUN touch /run/supervisord.pid
RUN chown www-data /run/nginx.pid
RUN chown www-data /run/supervisord.pid
RUN chown www-data:www-data /etc/supervisord.conf
RUN chown -R www-data:www-data /var/lib/nginx/logs/

# #Copy site files

COPY vendor /app/vendor
COPY src/config /app/config
COPY src/migrations /app/migrations
COPY src/modules /app/modules
COPY src/templates /app/templates
COPY src/translations /app/translations
COPY src/config /app/config
COPY web /app/web
COPY craft /app/

RUN mkdir /app/storage
RUN mkdir /app/runtime
RUN mkdir /app/web/cpresources

RUN chown www-data:www-data /app/runtime
RUN chown www-data:www-data /app/web/cpresources
RUN chown www-data:www-data /app/storage
RUN chown www-data:www-data /app/web

USER www-data

EXPOSE 80

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisor.conf"]
