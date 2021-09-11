# AcademyManageApp


This is a academy management application which is used to manage the backend of the academy.


> Login page where you can login and register.
> When logged in you can add teachers,view list,edit/Update,delete the teachers assign teacher to classes under Faculty manage tab.
> You can add students and assign them to classes,edit/update,delete the students  under Student manage tab.
> You can view the class report to see the classes,students and teachers assigned to every subject for every class.

To see the data :Presently data for class X and subject Marathi available(under class report tab)

There are three folders 
>model - In this the java classes are available(POJO)
>dao  - The database access object with JDBC connection is available
>web - In this the servlets are available, The teacherServlet is the main servlet which handles and processes all the requests.The login,logout,register are some other servlets 
which are used for respective request processing.

>The web pages are written in jsp with JSTL.The http session has been maintained across all the jsp pages which are then destroyed at logout.
MYSQL database is used with JDBC connection.
>Bootstrap is used for designing the web pages.
>In the class report page the JQuery AJAX is used to send the http request to the teacherServlet which returns a json object which then is displayed on the webpage using 
javascript table.
> Data for other pages set using the request.setAtrribute() function.



