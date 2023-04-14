# Taxi-Service

<img src="https://i2.paste.pics/MYJ73.png">

`This project is imitation a taxi service. Project works on Java Servlets and SQL.`


# Features
- Add and delete car models
- Add and delete cars
- Add and delete drivers
- Add drivers to specific cars
- View all cars belonging to the current driver
- Add the current driver to any car
- Authentication

# How to run project
- Clone this repository
- Run SQL script located `src/main/resources/init_db.sql` to initialize database
- Replace the values of next properties with the appropriate values for your database setup: 
  - URL (if needed. by defoult `localhost`); 
  - USERNAME; 
  - PASSWORD; 
  - JDBC_DRIVER (if needed, by defoult `com.mysql.cj.jdbc.Driver`.
- Build project by using Maven: mvn clean package
- Deploy the WAR file to a servlet container such as Tomcat
- After deploying the project, navigate to `http://localhost:8080` in your browser

# Structure
- controller: Servlets that handle HTTP requests and responses
- dao: Data Access Object interfaces and their implementations
- filter: Servlet Filters used to intercept requests and responses
- model: Plain Old Java Objects (POJOs) that represent data
- service: Service interfaces and their implementations that perform business logic
- util: 
  - ConnectionUtil: Utility class used in a project to create a database connection;
  - Encrypt: Utility class used in a project to encrypted user passwords.
- resources: Non-Java files such as database scripts
- webapp: Contains web resources such as JSP files
- WEB-INF: Contains configuration files for the web application
- views: Contains JSP files used as views in the application for cars, drivers, manufacturers, authentication

# Used Technologies
- Java `v.11`
- Maven `v.3.3.2`
- JDBC `v.4.2`
- MySQL `v.8.0.22`
- Java Servlets `v.4.0.1`
- JSTL `v.1.2`
- Tomcat `v.9.0.73`

# Authors
[Nickolay Voloshchuk](https://github.com/NickolayVoloshchuk)
