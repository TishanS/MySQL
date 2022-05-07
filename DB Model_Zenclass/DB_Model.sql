CREATE DATABASE `data`;

CREATE TABLE `student` (
    `Id` INT PRIMARY KEY AUTO_INCREMENT,
    `Name` VARCHAR(255),
    `Email` VARCHAR(255),
    `Age` INT
);
INSERT INTO `student` ( Name, Email, Age) VALUES ('Arun', 'Arun@gmail', 29);
INSERT INTO `student` ( Name, Email, Age) VALUES ('Vishwas', 'Vishwas@gmail', 25);
INSERT INTO `student` ( Name, Email, Age) VALUES ('Kumar', 'Kumar@gmail', 35);
INSERT INTO `student` ( Name, Email, Age) VALUES ('Rajesh', 'Rajesh@gmail', 39);
INSERT INTO `student` ( Name, Email, Age) VALUES ('Dinesh', 'Dinesh@gmail', 23);

CREATE TABLE `batch` (
    `BatchId` INT PRIMARY KEY AUTO_INCREMENT,
    `StudentId` INT,
    `BatchName` VARCHAR(255),
    `Duration_Months` INT,
    FOREIGN KEY (StudentId)
        REFERENCES student (Id)
);
INSERT INTO `batch` (StudentId, BatchName, Duration_Months) VALUES (1,'B30WD', 3), (2, 'B30WE', 6), (3, 'B40WD', 5), (4, 'B20WE', 2), (5, 'B50WD', 2);

CREATE TABLE `Task` (
    `TaskId` INT PRIMARY KEY AUTO_INCREMENT,
    `StudentId` INT,
    `BatchId` INT,
    `Status` VARCHAR(255),
    FOREIGN KEY (StudentId)
        REFERENCES student (Id),
    FOREIGN KEY (BatchId)
        REFERENCES batch (BatchId)
);
INSERT INTO `Task` (StudentId, BatchId, Status) VALUES (1,6,'Completed'),(2,7,'In-progress'),(3,8,'In-progress'),(4,9,'Completed'),(5,10,'Completed');

CREATE TABLE `Mentor` (
    `MentorId` INT PRIMARY KEY AUTO_INCREMENT,
    `StudentId` INT,
    `MentorName` VARCHAR(255),
    FOREIGN KEY (StudentId)
        REFERENCES student (Id)
);
INSERT INTO `Mentor` (studentId, MentorName) VALUES (1,'Hari'),(2,'Siva'),(3,'Prakash'),(4,'Bala'),(5,'Manoj');
-- SELECT * FROM student AS s LEFT JOIN batch AS b ON s.Id=b.StudentId LEFT JOIN  Task AS t ON s.Id=t.StudentId  LEFT JOIN Mentor AS m ON s.Id=m.StudentId ;
SELECT 
    s.Id,
    s.Name,
    s.Email,
    s.Age,
    b.BatchId,
    b.BatchName,
    b.Duration_Months,
    t.TaskId,
    t.Status,
    m.MentorId,
    m.MentorName
FROM
    student AS s
        LEFT JOIN
    batch AS b ON s.Id = b.StudentId
        LEFT JOIN
    Task AS t ON s.Id = t.StudentId
        LEFT JOIN
    Mentor AS m ON s.Id = m.StudentId;
DROP TABLE `Men+tor`;
DROP TABLE `batch`;
DROP TABLE `student`;