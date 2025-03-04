FROM maven:3.9.9-eclipse-temurin-23

WORKDIR /app

COPY . .

RUN chown -R www-data:www-data /app
RUN chmod 777 -R /app
RUN chmod g+s -R  /app

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]