#!/bin/sh

git clone https://github.com/corona-warn-app/cwa-verification-server/
git clone https://github.com/corona-warn-app/cwa-verification-portal
git clone https://github.com/corona-warn-app/cwa-testresult-server
git clone https://github.com/corona-warn-app/cwa-verification-iam.git

rm cwa-verification-server/target/*.jar
rm cwa-verification-portal/target/*.jar
rm cwa-testresult-server/target/*.jar

mvn -f cwa-verification-server install
mvn -f cwa-verification-portal install
mvn -f cwa-testresult-server -DskipTests install

docker-compose build
