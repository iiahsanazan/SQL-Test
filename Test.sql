CREATE TABLE userContent (
	userID INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(50),
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    threeDigitNumber INT,
    numberOfWins INT,
    numberOfLosses INT
	
);

select * from userContent


INSERT INTO userContent (username, firstName, lastName, threeDigitNumber, numberOfWins, numberOfLosses)
VALUES
    ('ahsan17', 'Ahsan', 'Azan', 567, 28, 12),
    ('Ali11', 'Hassnain', 'Hassan', 789, 42, 8),
    ('Ayesha214', 'Ayesha', 'khan', 234, 15, 20),
    ('Mooez12', 'bhutta', 'Hussain', 456, 35, 5),
	('zohaib12', 'Zohaib', 'khan', 562, 21, 2),
    ('Nadia667', 'Nadia', 'Hassan', 781, 4, 8),
    ('Alleza12', 'Ayesha', 'khan', 236, 5, 2),
    ('karam12', 'karam', 'Hussain', 451, 5, 5),
	('Nai1789', 'Naia', 'illahi', 136, 50, 20),
    ('Faizan66', 'Faizan', 'Nishat', 851, 4, 6);



	CREATE TABLE NetworkCodes (
	ID INT PRIMARY KEY IDENTITY(1,1),
    FourDigitCode VARCHAR(4),
    NetworkName VARCHAR(255)
);



INSERT INTO NetworkCodes (FourDigitCode, NetworkName)
VALUES
    ('4F6I', 'Library_Network_4G'),
    ('8G2J', 'Office_WiFi'),
    ('3K9L', 'Home_Network'),
    ('7R1M', 'CoffeeShop_FreeWiFi'),
    ('2H8N', 'School_Campus_WiFi'),
    ('6P5Q', 'Gym_WiFi'),
    ('9S3T', 'Public_Park_WiFi'),
    ('5U7V', 'Mall_WiFi'),
    ('1W4X', 'Restaurant_WiFi'),
    ('0Y6Z', 'Airport_FreeWiFi');



	CREATE TABLE QuizQuestions (
    QuestionText VARCHAR(255),
    Answer1 VARCHAR(255),
    Answer2 VARCHAR(255),
    Answer3 VARCHAR(255),
    Answer4 VARCHAR(255),
    CorrectAnswer VARCHAR(255),
    Image varbinary(max),
    FirstAnsweredByUserId int,
	FOREIGN KEY (FirstAnsweredByUserId) REFERENCES userContent(userId)

);



INSERT INTO QuizQuestions (QuestionText, Answer1, Answer2, Answer3, Answer4, CorrectAnswer, Image,FirstAnsweredByUserId)
VALUES
    ('What is the capital of Pakistan?', 'Paris', 'Berlin', 'London', 'Madrid', 'Islamabad', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Pakistan.jpg', SINGLE_BLOB) as T1),8),

	 ('What is the capital of Turkey?', 'Paris', 'Berlin', 'London', 'Madrid', 'Ankara', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Turkey.webp', SINGLE_BLOB) as T1),3),

	 ('What is the capital of Canada?', 'Paris', 'Berlin', 'London', 'Madrid', 'Ottawa', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Canada.jpg', SINGLE_BLOB) as T1),2),

	 ('What is the capital of Malaysia?', 'Paris', 'Berlin', 'London', 'Madrid', 'Kuala Lumpur', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Maylaysia.jpg', SINGLE_BLOB) as T1),9),

	 ('What is the capital of Saudia Arabia?', 'Paris', 'Berlin', 'London', 'Madrid', 'Riyadh', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Saudia.webp', SINGLE_BLOB) as T1),5),

	 ('What is the capital of UK?', 'Paris', 'Berlin', 'London', 'Madrid', 'London', 
	(SELECT * FROM OPENROWSET(BULK N'D:\UK.webp', SINGLE_BLOB) as T1),7),

	 ('What is the capital of Thailand?', 'Paris', 'Berlin', 'London', 'Madrid', 'Bangkok', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Thailand.webp', SINGLE_BLOB) as T1),1),

	 ('What is the capital of Argentina?', 'Paris', 'Berlin', 'London', 'Madrid', 'Buenos Aires', 
	(SELECT * FROM OPENROWSET(BULK N'D:\aRgentina.webp', SINGLE_BLOB) as T1),4),

	 ('What is the capital of JAPAN?', 'Paris', 'Berlin', 'London', 'Madrid', 'Tokyo', 
	(SELECT * FROM OPENROWSET(BULK N'D:\JAPAN.jpg', SINGLE_BLOB) as T1),8),

	 ('What is the capital of Italy?', 'Paris', 'Berlin', 'London', 'Madrid', 'Rome', 
	(SELECT * FROM OPENROWSET(BULK N'D:\Italy.jpg', SINGLE_BLOB) as T1),3)
   

   select * from QuizQuestions
  
		   SELECT Username, NumberOfWins
		FROM userContent
		ORDER BY NumberOfWins DESC;



