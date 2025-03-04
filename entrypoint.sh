#!/bin/sh

mvn clean install

JAR_FILE=$(find "/app/target" -type f -name "product-backend*.jar" | head -n 1)

exec java -jar "$JAR_FILE"