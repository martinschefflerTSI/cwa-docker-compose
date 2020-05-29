git clone https://github.com/corona-warn-app/cwa-verification-server/
git clone https://github.com/corona-warn-app/cwa-verification-portal
git clone https://github.com/corona-warn-app/cwa-testresult-server
git clone https://github.com/corona-warn-app/cwa-verification-iam.git

call mvn -f cwa-verification-server install
call mvn -f cwa-verification-portal install
call mvn -f cwa-testresult-server -DskipTests install
