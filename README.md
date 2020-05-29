# cwa-allinone
Start the german corona app backend with a single docker-compose file

Prerequisites:
Maven
Java 11
Docker-Compose

Step 1: Execute init.bat or init.sh. This downloads the cwa repositories into the current directory and executes maven for each repo.
Step 2: docker-compose up 
Step 3: Open keycloak admin interface at http://localhost:8080 with user admin, password admin
Step 4: Create a new user. Go to Users -> Add User. Enter a username, click "Email verified". After clicking save, go to "Credentials" and add a password. Uncheck "temporary", click "Set password".
Step 5: Go to "Role Mappings" in the user submenu and add the roles c19hotline and teletan_generator.

Open http://localhost:8081/cwa/teletan
