# SpringHibernateDB
Student Database App Project (CRUD)

I created a student database using Spring, Hibernate, JSP, HTML, CSS, JavaScript, and MySQL. The users can add a new student, delete a student, or update a student’s information.

Once you unzip the project, open MySQL workbench and select Open SQL script and select both files under Student-Tracker DB. Once you open both scripts, open eclipse. In eclipse, import the student-tracker project and select run on server. Make sure you have Tomcat setup in eclipse. 

Development Process for listing student

1.	Create Student.java entity class

        a.	Create a Student.java entity class that uses hibernate to map to the database
    
2.	Create StudentDAO.java (Data access object) interface that helps talk to the database 

        a.	Create StudentDAOImpl.java

            i.	Get the current hibernate session

            ii.	Create a query and sort by last name 

            iii.	Execute query and get the list of students

            iv.	Return list

3.	Create StudentService.java

        a.	Create StudentServiceImpl.java interface

            i.	Inject the student dao

            ii.	Get the student from dao

4.	Create StudentController.java

        a.	Set up Student Controller class that responds to request mapping annotation and link it to the JSP page

            i.	Inject the student service

            ii.	Get student from service

            iii.	Add students to the model

5.	Create JSP page: list-student.jsp

Development Process for adding a student

1.	Update list-student.jsp

        a.  Create an add student button

2.	Create a HTML form for new student

        a.	Create a form that allows the user to add students first name, last name, and email.
    
3.	Update StudentController.java

        a.	Create model attribute to bind form data

        b.	Create saveStudent method 

        c.	Save the student using service

4.	Update StudentService.java

        a.	Create a saveStudent method that calls the dao saveStudent method

5.	Update StudentDAO.java

        a.	Create a saveStudent method

        b.	Get current hibernate session

        c.	Save student

Development Process for updating a student

1.	Update list-student.jsp

        a.	Create an update link

2.	 Prepopulate the student form when updating a student

        a.	Update studentController.java

            i.	Get the student from the service

            ii.	Set student as a model attribute to pre-populate the from

            iii.	Send over to the form

        b.	Update studentService.java

            i.	Create getStudent method that calls the dao getStudent method

        c.	Update studentDao.java

            i.	Create getStudent method
        
            ii.	Get the current hibernate session

            iii.	Retrieve/read from the database using the primary key

3.	Save student to database

        a.	Update studentDao.java

        b.	Add saveOrUpdate method to the saveStudent method

Development process for deleting student

1.	Update student-form.jsp

        a.	create a delete link

        b.	prompt the user before deleting student us JavaScript 

2.	Update studentController.java

        a.	Create deleteStudent method

        b.	Delete the student

3.	Update studentService.java

        a.	Create deleteStudent method the calls the dao deleteStudent method
    
4.	Update studentDao.java

        a.	Get the current hibernate session 

        b.	Delete the object with primary key
