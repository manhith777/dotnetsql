USE StudentDB;

CREATE TABLE Students (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT
);

INSERT INTO Students (Id, Name, Age)
VALUES (1, 'Manhith', 22), (2, 'Sai', 21);
