USE University;

SELECT	Student.ID 'Student ID',
		Student.FirstMidName + ' ' + Student.LastName AS 'Student Names', 
		Course.Title AS 'Course Title', 
		Course.Credits AS 'Course Credits',  
		Instructor.FirstMidName + ' ' + Instructor.LastName AS 'Instructor Names',
		Enrollment.Grade 'Course Grade'
FROM Student, Instructor, Enrollment, Course, CourseAssignment
WHERE Student.ID = Enrollment.StudentID AND
	  Course.CourseID = Enrollment.CourseID AND
	  Course.CourseID = CourseAssignment.CourseID AND
	  Instructor.ID = CourseAssignment.InstructorID AND
	  Student.ID = 1;

select * from enrollment;