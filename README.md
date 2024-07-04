### Shorty: URL Shortener using Spring Boot

**Description:**
Shorty is a URL shortening application built using Spring Boot framework. It allows users to shorten long URLs into shorter, more manageable links. This README provides an overview of the project structure and dependencies used.

**Project Structure:**
- **.mvn/wrapper:** Contains Maven wrapper files, enabling the project to be built using Maven without needing to install it globally.
- **.settings:** Eclipse IDE settings directory.
- **src:** Contains the source code of the application, including Java files, JSP files, and other resources.
- **target:** Default output directory for compiled classes and packaged JAR or WAR files.
- **.classpath:** Eclipse classpath file.
- **.factorypath:** Eclipse factory path file.
- **.project:** Eclipse project file.
- **HELP.md:** Markdown file providing help and guidance for the project.
- **mvnw:** Maven wrapper script for Unix-based systems.
- **mvnw.cmd:** Maven wrapper script for Windows-based systems.
- **pom.xml:** Project Object Model (POM) file defining project dependencies, configurations, and other settings.

**Dependencies:**
- **Spring Boot Starter Actuator:** Provides production-ready features to monitor and manage the application.
- **Spring Boot Starter Data JPA:** Simplifies the implementation of JPA-based data access layers.
- **Spring Boot Starter Mail:** Provides email sending capabilities.
- **Spring Boot Starter Web:** Starter for building web applications using Spring MVC.
- **Jakarta Validation API:** Provides validation capabilities for Java applications.
- **Spring Boot DevTools:** Provides development-time features to improve productivity.
- **MySQL Connector/J:** JDBC driver for connecting to MySQL databases.
- **Lombok:** Library to reduce boilerplate code by automatically generating getter, setter, and other methods.
- **Spring Boot Starter Tomcat:** Starter for using Tomcat as the embedded servlet container.
- **Spring Boot Starter Test:** Starter for testing Spring Boot applications.
- **Tomcat Jasper:** Required for JSP support in embedded Tomcat.
- **Google ZXing Core and JavaSE:** Libraries for generating QR codes.
- **Jakarta Servlet JSP JSTL:** Jakarta EE implementation of the JSP Standard Tag Library.

**Build Configuration:**
- **spring-boot-maven-plugin:** Maven plugin for packaging Spring Boot applications into executable JAR or WAR files.

**Note:** Ensure JDK 21 or later is installed on your system before building and running the application.

For more detailed information on the project setup, configurations, and usage, refer to the project's source code and documentation.
