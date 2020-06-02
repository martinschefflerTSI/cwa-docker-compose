# cwa-allinone
Start the german corona app backend with a single docker-compose file

Prerequisites:
Maven
Java 11
Docker-Compose


Unfortunately keycloak is not very docker friendly. 
https://stackoverflow.com/questions/50670734/keycloak-in-docker-compose-network
Please add an entry to the hosts file of your docker host computer. Please open /etc/hosts and add host name "iam" for localhost/127.0.0.1.

To start the corona app backend:
Step 1: Execute init.bat or init.sh. This downloads the cwa repositories into the current directory and executes maven for each repo.
Step 2: docker-compose up 
Step 3: Open keycloak admin interface at http://iam:8080 with user admin, password admin
Step 4: Create a new user. Go to Users -> Add User. Enter a username, click "Email verified". After clicking save, go to "Credentials" and add a password. Uncheck "temporary", click "Set password".
Step 5: Go to "Role Mappings" in the user submenu and add the roles c19hotline and teletan_generator.

__Verification Portal__
Open http://localhost:8081/cwa/teletan - this should redirect you to keycloak, where you can enter the credentials of the user that you manually created.
After that, you will be redirected back to the verification portal where you should be able to generate a teleTAN.

__Verification Server__
You can see the swagger UI at this URL: http://localhost:8082/swagger-ui/

__Testresult Server__
To set a test result: try this:
curl -X POST -d "{\"id\":\"x\",\"result\":1}" -H "content-type:application/json" localhost:8083/api/v1/app/result