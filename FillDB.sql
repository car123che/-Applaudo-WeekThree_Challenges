-- Fill tables
Use University;

-- Student
INSERT INTO Student ( LastName, FirstMidName, EnrollmentDate ) VALUES ( 'Fernandez', 'Pedro Pablo', GETDATE() );
INSERT INTO Student ( LastName, FirstMidName, EnrollmentDate ) VALUES ( 'Solares', 'Luis Pablo', GETDATE() );
INSERT INTO Student ( LastName, FirstMidName, EnrollmentDate ) VALUES ( 'Mijangos', 'Pablo Agusto', GETDATE() );
INSERT INTO Student ( LastName, FirstMidName, EnrollmentDate ) VALUES ( 'Felipez', 'Pepe B.', GETDATE() );
INSERT INTO Student ( LastName, FirstMidName, EnrollmentDate ) VALUES ( 'Cortes', 'Marco A.', GETDATE() );

SELECT * FROM Student;

-- Instructor 
INSERT INTO Instructor ( LastName, FirstMidName, HireDate ) VALUES ( 'Martinez', 'David', GETDATE() );
INSERT INTO Instructor ( LastName, FirstMidName, HireDate ) VALUES ( 'Lopez', 'Jose Jose', GETDATE() );
INSERT INTO Instructor ( LastName, FirstMidName, HireDate ) VALUES ( 'Felipez', 'Pablo Andre', GETDATE() );

SELECT * FROM Instructor;

-- Department
INSERT INTO Department ( Name, Budget, StartDate, InstructorID ) VALUES ( 'Arquitectura', 50000, GETDATE(), 1);
INSERT INTO Department ( Name, Budget, StartDate, InstructorID ) VALUES ( 'Derecho', 75000, GETDATE(), 1);
INSERT INTO Department ( Name, Budget, StartDate, InstructorID ) VALUES ( 'Ingenieria', 80000, GETDATE(), 2);
INSERT INTO Department ( Name, Budget, StartDate, InstructorID ) VALUES ( 'Auditoria', 60000, GETDATE(), 3);

SELECT * FROM Department;

-- OfficeAssignment
INSERT INTO OfficeAssignment VALUES ( 1, 'Location 1' );
INSERT INTO OfficeAssignment VALUES ( 2, 'Location 2' );
INSERT INTO OfficeAssignment VALUES ( 3, 'Location 3' );

SELECT * FROM OfficeAssignment;

-- Course
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Dibujo 1', 5, 1);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Dibujo 2', 4, 1);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Dibujo 3', 3, 1);

INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Leyes 1', 6, 2);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Leyes 2', 5, 2);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Leyes 3', 5, 2);

INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Mate 1', 5, 3);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Fisica 1', 4, 3);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Quimica 1', 3, 3);

INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Conta 1', 2, 4);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Conta 2', 5, 4);
INSERT INTO Course ( Title, Credits, DepartmentID ) VALUES ( 'Conta 3', 3, 4);

SELECT * FROM Course;


-- Course Assignment
INSERT INTO CourseAssignment VALUES ( 1, 1 );
INSERT INTO CourseAssignment VALUES ( 1, 2 );
INSERT INTO CourseAssignment VALUES ( 1, 3 );

INSERT INTO CourseAssignment VALUES ( 1, 4 );
INSERT INTO CourseAssignment VALUES ( 2, 5 );
INSERT INTO CourseAssignment VALUES ( 3, 6 );

INSERT INTO CourseAssignment VALUES ( 2, 7 );
INSERT INTO CourseAssignment VALUES ( 2, 8 );
INSERT INTO CourseAssignment VALUES ( 2, 9 );

INSERT INTO CourseAssignment VALUES ( 3, 10 );
INSERT INTO CourseAssignment VALUES ( 3, 11 );
INSERT INTO CourseAssignment VALUES ( 3, 12 );

SELECT * FROM CourseAssignment;

-- Enrollment
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 1, 1, 60);
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 3, 1, 70);


INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 4, 2, 62);
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 5, 2, 61);
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 6, 2, 64);


INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 7, 3, 80);
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 8, 3, 90);
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 9, 3, 40);


INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 2, 4, 68);


INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 10, 5, 90);
INSERT INTO Enrollment ( CourseID, StudentID, Grade ) VALUES ( 12, 5, 69);

SELECT * FROM Enrollment;