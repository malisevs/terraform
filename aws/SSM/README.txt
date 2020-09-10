1. Edit bucket name in backend.tf (bucket should be created)
2. In folder "microservices" for each microservice we have separate tf file with variable that contains specific parameters with their value and types. 
Concat file will take all those variables and put them in one, that will be iterated through and create parameters. Concat must be populated with new variables, after new tf files are created.
3. Edit modules/ssm/ssm.tf as needed, in our case there is prefix for variables.
4. For authorization use PUM, script will take credentials from "%USERPROFILE%/.aws/credentials"
5. terraform init