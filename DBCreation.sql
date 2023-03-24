USE University;
GO

--CREATE SCHEMA University;
--GO

-- student
CREATE TABLE Student 
(
	ID INT PRIMARY KEY NOT NULL IDENTITY,
	LastName VARCHAR(30) NOT NULL, 
	FirstMidName VARCHAR(50) NOT NULL,
	EnrollmentDate DATETIME2 NOT NULL
);

-- Instructor
CREATE TABLE Instructor
(
	ID INT PRIMARY KEY NOT NULL IDENTITY,
	LastName VARCHAR(30) NOT NULL, 
	FirstMidName VARCHAR(50) NOT NULL,
	HireDate DATETIME2 NOT NULL
);

-- Department
CREATE TABLE Department
(
	DepartmentID INT PRIMARY KEY NOT NULL IDENTITY,
	Name VARCHAR(50) NOT NULL,
	Budget MONEY NOT NULL, 
	StartDate DATETIME2 NOT NULL, 
	InstructorID INT NOT NULL, 
	CONSTRAINT InstructorDepartment FOREIGN KEY (InstructorID) REFERENCES  Instructor(ID)
);

-- Course
CREATE TABLE Course
(
	CourseID INT PRIMARY KEY NOT NULL IDENTITY,
	Title VARCHAR(50) NOT NULL,
	Credits INT NOT NULL, 
	DepartmentID INT NOT NULL,
	CONSTRAINT CourseDepartment FOREIGN KEY (DepartmentID) REFERENCES  Department(DepartmentID)
);

-- Enrollment
CREATE TABLE Enrollment
(
	EnrollmentID INT PRIMARY KEY NOT NULL IDENTITY,
	CourseID INT NOT NULL,
	StudentID INT NOT NULL,
	Grade DECIMAL NOT NULL,
	CONSTRAINT EnrollmentCourse FOREIGN KEY (CourseID) REFERENCES  Course(CourseID),
	CONSTRAINT EnrollmentStudent FOREIGN KEY (StudentID) REFERENCES  Student(ID)
);

-- OfficeAssignment
CREATE TABLE OfficeAssignment
(
	InstructorID INT NOT NULL,
	Location VARCHAR(50) NOT NULL,
	CONSTRAINT OfficeAssignmentDepartment FOREIGN KEY (InstructorID) REFERENCES  Instructor(ID)
);

-- CourseAssignment
CREATE TABLE CourseAssignment
(
	InstructorID INT NOT NULL,
	CourseID INT NOT NULL,
	CONSTRAINT AssignmentCourse FOREIGN KEY (CourseID) REFERENCES  Course(CourseID),
	CONSTRAINT AssignmetInstructor FOREIGN KEY (InstructorID) REFERENCES  Instructor(ID)
);


