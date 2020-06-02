git clone https://github.com/corona-warn-app/cwa-verification-server/
git clone https://github.com/corona-warn-app/cwa-verification-portal
git clone https://github.com/corona-warn-app/cwa-testresult-server
git clone https://github.com/corona-warn-app/cwa-verification-iam.git

del cwa-verification-server\target\*.jar
del cwa-verification-portal\target\*.jar
del cwa-testresult-server\target\*.jar

call mvn -f cwa-verification-server install
call mvn -f cwa-verification-portal install
call mvn -f cwa-testresult-server -DskipTests install

docker-compose build