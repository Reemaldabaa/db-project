CREATE TABLE Employee(
    EID INT PRIMARY KEY,
    Salary DECIMAL(10,2),
    Ename VARCHAR(50),
    Age INT
);

CREATE TABLE Department(
    DID INT PRIMARY KEY,
    Dname VARCHAR(50),
    Count INT
);

CREATE TABLE Employee_Department(
    EID INT,
    DID INT,
    PRIMARY KEY(EID,DID),
    FOREIGN KEY(EID) REFERENCES Employee(EID),
    FOREIGN KEY(DID) REFERENCES Department(DID)
);

CREATE TABLE Client(
    CID INT PRIMARY KEY,
    Cname VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Category(
    Category VARCHAR(50),
    CID INT,
    PRIMARY KEY(Category,CID),
    FOREIGN KEY(CID) REFERENCES Client(CID)
);

CREATE TABLE Project(
    PID INT PRIMARY KEY,
    Pname VARCHAR(50),
    Cost DECIMAL(10,2),
    PDate DATE,
    CID INT,
    FOREIGN KEY(CID) REFERENCES Client(CID)
);

CREATE TABLE Work_Hours(
    W_EID INT,
    W_PID INT,
    WorkHours INT,
    PRIMARY KEY(W_EID,W_PID),
    FOREIGN KEY(W_EID) REFERENCES Employee(EID),
    FOREIGN KEY(W_PID) REFERENCES Project(PID)
);

CREATE TABLE Tool(
    TID INT PRIMARY KEY,
    Tname VARCHAR(50),
    Cost DECIMAL(10,2)
);

CREATE TABLE Use_Tool(
    U_TID INT,
    U_PID INT,
    PRIMARY KEY(U_TID,U_PID),
    FOREIGN KEY(U_TID) REFERENCES Tool(TID),
    FOREIGN KEY(U_PID) REFERENCES Project(PID)
)



INSERT INTO Employee (EID, Ename, Salary) VALUES
(1, 'Ahmed', 5000),
(2, 'Mona', 4800),
(3, 'Ali', 5100),
(4, 'Sara', 4700),
(5, 'Omar', 5200),
(6, 'Nada', 4950),
(7, 'Khaled', 5050),
(8, 'Laila', 4750),
(9, 'Rami', 5300),
(10, 'Noha', 4900);

INSERT INTO Department (DID, Dname) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Admin'),
(7, 'Logistics'),
(8, 'Customer Service'),
(9, 'Legal');

INSERT INTO Employee_Department VALUES
(1,1),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9);

INSERT INTO Client (CID, Cname, Email) VALUES
(1, 'Alaa', 'alaa@example.com'),
(2, 'Reem', 'reem@example.com'),
(3, 'Sara', 'sara@example.com'),
(4, 'Mona', 'mona@example.com'),
(5, 'Laila', 'laila@example.com'),
(6, 'Nada', 'nada@example.com'),
(7, 'Huda', 'huda@example.com'),
(8, 'Marwa', 'marwa@example.com'),
(9, 'Rania', 'rania@example.com'),
(10, 'Eman', 'eman@example.com');

INSERT INTO Category (Category, CID) VALUES
('Gold', 1),
('Silver', 2),
('Bronze', 3),
('Platinum', 4),
('Diamond', 5),
('Standard', 6),
('Premium', 7),
('Basic', 8),
('VIP', 9),
('Exclusive', 10);

insert into project values
(11, 'one', 1.00, '2025-01-01', 11),
(12, 'one', 1.00, '2025-01-01', 12),
(13, 'one', 1.00, '2025-01-01', 13),
(14, 'one', 1.00, '2025-01-01', 14),
(15, 'one', 1.00, '2025-01-01', 15),
(16, 'one', 1.00, '2025-01-01', 16),
(17, 'one', 1.00, '2025-01-01', 17),
(18, 'one', 1.00, '2025-01-01', 18),
(19, 'one', 1.00, '2025-01-01', 19),
(20, 'one', 1.00, '2025-01-01', 20);

insert into work_hours values
(11,11,1), (12,12,1), (13,13,1), (14,14,1), (15,15,1),
(16,16,1), (17,17,1), (18,18,1), (19,19,1), (20,20,1);

insert into tool values
(11, 'one', 1.00),
(12, 'one', 1.00),
(13, 'one', 1.00),
(14, 'one', 1.00),
(15, 'one', 1.00),
(16, 'one', 1.00),
(17, 'one', 1.00),
(18, 'one', 1.00),
(19, 'one', 1.00),
(20, 'one', 1.00);

insert into use_tool values
(11,11), (12,12), (13,13), (14,14), (15,15),
(16,16), (17,17), (18,18), (19,19), (20,20);