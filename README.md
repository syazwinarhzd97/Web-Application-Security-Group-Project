# Web-Application-Security-Group-Project

## Nur Group Members
* Nur Syazwina binti Ruhaizad 1717470

## Title
Aurora Cat Management System

## Introduction
This project is basically about the system that manage the rescue shelter to help the stray cats. One of the main purposes is I want to build a system that can manage the rescue shelter for stray cats with the objectives to rescue, treat (if needed), neutered and find adopters for the cats. This system is supervised by the administrators which all the details of the cat will be registered and keep ongoing updated and also register adopter details. Within this user-friendly system, the rescue shelter can be managed very well and systematically.(Syazwina)

## Objective of the enhancement
* To prevent sensitive information from being accessed and stolen by hackers.(Syazwina)

## Web Application Security Enhancement
1. Input Validation
* Display an error message on submission when the input is empty.(Syazwina)
* Browser will display error message when username and password are not matched with the record in the database.(Syazwina)

2. Authentication
* Authenticate the password by using strong hash which is SHA-256 encryption.(Syazwina)

3. Authorization

4. XSS and CSRF Prevention

5. Database Security Principles(Syazwina)
* Parameterized Queries is used to escape input and help to prevent SQL injection attacks.(Syazwina)
* Separate Accounts for Separate Roles. Create a new database user and assign a separate user for each role. Create two admin and give permission to perform task for that role only. Set the permission and right for each database user to only what that role requires. Grant privileges to specified database users to perform any action to schema. (Syazwina)
* Stored procedure. Grant only the rights to execute stored procedure for application database user. Give the permission to execute stored procedure for database user can limit the potential damage from any SQL injection attack against the database.(Syazwina)

6. File Security Principles
* Avoid making backup of copy of the file to prevent attackers from seeing and download the backup files which they can stole the credential. (Syazwina)
* Disable directory listing in a web project. Ensure that the directory listings in web.xml is false and ensure error code is the same whether directory exists or not. (Syazwina)

## References
1. Sullivan, B., & Liu, V. (2011). Web application security: A beginner’s guide (1st ed.). USA: McGraw Hill.
2. Janko Jovanovic (2009). Web Form Validation: Best Practices and Tutorials. Retrieved from
https://www.smashingmagazine.com/2009/07/web-form-validation-best-practices-and-tutorials/
3. Javainterviewpoint (2018). Java Salted Password Hashing. Retrieved from
https://www.javainterviewpoint.com/java-salted-password-hashing/
4. Java Security. Java Secure Hashing – MD5, SHA256, SHA512, PBKDF2, BCrypt, SCrypt. Retrieved from
https://howtodoinjava.com/java/java-security/how-to-generate-secure-password-hash-md5-sha-pbkdf2-bcrypt-examples/
5. Patrick Keisler (2012). Grant Execute Permission on All Stored Procedures. Retrieved from
https://www.netsparker.com/blog/web-security/disable-directory-listing-web-servers/
6. Nam Ha Minh (2019). JDBC Examples for Calling Stored Procedures (MySQL). Retrieved from
https://www.codejava.net/java-se/jdbc/jdbc-examples-for-calling-stored-procedures-mysql
7. MySQL Tutorial. MySQL Workbench: Users and Privileges. Retrieved from
https://www.quackit.com/mysql/workbench/users_and_privileges.cfm
8. Server Tutorials. Sanitizing User Input. Retrieved from
https://happycoding.io/tutorials/java-server/sanitizing-user-input
9. Netsparker Security Team (2019). How to Disable Directory Listing on Your Web Server. Retrieved from
https://www.netsparker.com/blog/web-security/disable-directory-listing-web-servers/
