## Indexes

1. Indx_CourseAssignment_InstructorID
   
The InstructorID in the CourseAssignment will help us to find all the courses assigned to an specific Instructor. So this is a good index to make the SELECT faster.

``` SQL
CREATE INDEX Indx_CourseAssignment_InstructorID ON CourseAssignment (InstructorID);
```

2. Indx_Enrollment_CourseID

The CourseID in the Enrollment will help us to find all the student assigned to a Course. So this will make a SELECT faster.
``` sql
CREATE INDEX Indx_Enrollment_CourseID ON Enrollment (CourseID);
```

3. Indx_Course_DepartmentID

The DepartmentID in the Course table will help us to find all the courses in a specific department. So it will make the SELECT faster.
``` SQL
CREATE INDEX Indx_Course_DepartmentID ON Course (DepartmentID);
```

4. Indx_Department_InstructorID
The InstructorID in the Department table will help us to find all the instrucors in a specific department. 
``` sql
CREATE INDEX Indx_Department_InstructorID ON Department (InstructorID);
```

5. Indx_CourseAssignment_InstructorID_CourseID && Indx_Enrollment_CourseID_StudentID

This two indexes will help us to select the courses taught by an instructor and the students enrolled in those courses.

``` sql

CREATE INDEX Indx_CourseAssignment_InstructorID_CourseID ON CourseAssignment (InstructorID, CourseID);

CREATE INDEX Indx_Enrollment_CourseID_StudentID ON Enrollment (CourseID, StudentID);
```


## View

``` sql
CREATE VIEW vStudentCourses AS 
SELECT	Student.ID AS 'Student ID',
		Student.FirstMidName + ' ' + Student.LastName AS 'Student Names', 
		Course.Title AS 'Course Title', 
		Course.Credits AS 'Course Credits',  
		Instructor.FirstMidName + ' ' + Instructor.LastName AS 'Instructor Names',
		Enrollment.Grade 'Course Grade'
FROM Student, Instructor, Enrollment, Course, CourseAssignment
WHERE Student.ID = Enrollment.StudentID AND
	  Course.CourseID = Enrollment.CourseID AND
	  Course.CourseID = CourseAssignment.CourseID AND
	  Instructor.ID = CourseAssignment.InstructorID ;

-- SELECT FROM THE VIEW
SELECT * FROM vStudentCourses ORDER BY 'Student ID';
```



