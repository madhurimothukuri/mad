CREATE TABLE Book_Details
(
ISBN_Code int PRIMARY KEY,
Book_Title varchar(100),
Language varchar(10),
Binding_Id int,
No_Copies_Actual int,
No_Copies_Current int,
Category_id int,
Publication_year int
)

INSERT INTO BOOK_details VALUES('0006','Programming Concept','English',2,20,15,2,2006);
INSERT INTO BOOK_details VALUES('0007','Programming Language','English',3,22,16,3,2004);
INSERT INTO BOOK_details VALUES('0008','Programming C','English',4,23,17,4,2006);
INSERT INTO BOOK_details VALUES('0009','Programming C++','English',5,24,18,5,2003);
INSERT INTO BOOK_details VALUES('0004','Programming java','English',6,22,19,6,2002);
INSERT INTO BOOK_details VALUES('0003','DBMS','English',7,25,20,7,2001);
INSERT INTO BOOK_details VALUES('0002','RDBMS','Hindi',8,24,11,8,2005);
INSERT INTO BOOK_details VALUES('0001','HTML','English',9,26,12,9,2004);
INSERT INTO BOOK_details VALUES('0005',' DLD','English',10,27,13,10,2006);
select * from Book_Details

CREATE TABLE Binding_Details
(
Binding_id int PRIMARY KEY,
Binding_Name varchar(50)
)

INSERT INTO Binding_details VALUES(1,'BPB Publication');
INSERT INTO Binding_details VALUES(2,'ITC Publication');
INSERT INTO Binding_details VALUES(3,'MMR Publication');
INSERT INTO Binding_details VALUES(4,'CMR Publication');
INSERT INTO Binding_details VALUES(5,'BVR Publication');
INSERT INTO Binding_details VALUES(6,'RCR Publication');
INSERT INTO Binding_details VALUES(7,'VMR Publication');
SELECT * FROM Binding_details

Creating Relationship between book and binding table------------------------

ALTER TABLE BOOK_details
ADD CONSTRAINT Binding_id FOREIGN KEY(Binding_id) REFERENCES Binding_details(Binding_id);

