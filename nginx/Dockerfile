FROM nginx
COPY ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
COPY ./nginx.tpl /etc/nginx/nginx.tpl
ENV PORT 80
ENV APP_SERVER "http://localhost:8080"
CMD ["sh","/usr/local/bin/start.sh"]