INSERT INTO User (id, username, name, email, password, pfpUrl, createdAt) VALUES
('cmf7u00000001ab12cd34ef56','jnovak','Jan Novak','jan.novak@gmail.com','$2b$12$A8FhWzK9xPqL3sY2vM1NcOe','','2026-01-05 09:15:22'),
('cmf7u00000002ab12cd34ef57','pkralova','Petra Kralova','petra.kralova@seznam.cz','$2b$12$Lx2QnY8cR7mDk4pE5tVaJe','','2026-01-06 14:22:01'),
('cmf7u00000003ab12cd34ef58','mbenes','Martin Benes','martin.benes@outlook.com','$2b$12$F8pNwQ1zV4mRj6Yx2KdTaQ','','2026-01-09 18:30:11'),
('cmf7u00000004ab12cd34ef59','esvoboda','Eva Svobodova','eva.svobodova@gmail.com','$2b$12$J9vXcT7nM2qKz8Lr4PaHeB','','2026-01-12 08:44:35'),
('cmf7u00000005ab12cd34ef60','tdvorak','Tomas Dvorak','tomas.dvorak@icloud.com','$2b$12$Y3nKfP8wQ5mVj2Rt7LbXsC','','2026-01-14 11:17:09'),
('cmf7u00000006ab12cd34ef61','lhruba','Lucie Hruba','lucie.hruba@gmail.com','$2b$12$Q2mVnK8rT4xLp7Yc5JeHaD','','2026-01-18 16:02:55'),
('cmf7u00000007ab12cd34ef62','tomasc','Tomas Cerny','tomas.cerny@gmail.com','$2b$12$M7xRkQ4nY2vTj8Lp5FcWaE','','2026-01-22 07:21:18');

INSERT INTO Session (id, userId, createdAt, expiresAt) VALUES
('cmf7s00000001xy98ab76cd11','cmf7u00000001ab12cd34ef56','2026-03-01 08:00:00','2026-03-08 08:00:00'),
('cmf7s00000002xy98ab76cd12','cmf7u00000002ab12cd34ef57','2026-03-02 08:00:00','2026-03-09 08:00:00'),
('cmf7s00000003xy98ab76cd13','cmf7u00000003ab12cd34ef58','2026-03-03 08:00:00','2026-03-10 08:00:00'),
('cmf7s00000004xy98ab76cd14','cmf7u00000004ab12cd34ef59','2026-03-04 08:00:00','2026-03-11 08:00:00'),
('cmf7s00000005xy98ab76cd15','cmf7u00000005ab12cd34ef60','2026-03-05 08:00:00','2026-03-12 08:00:00'),
('cmf7s00000006xy98ab76cd16','cmf7u00000006ab12cd34ef61','2026-03-06 08:00:00','2026-03-13 08:00:00'),
('cmf7s00000007xy98ab76cd17','cmf7u00000007ab12cd34ef62','2026-03-07 08:00:00','2026-03-14 08:00:00');

INSERT INTO DailyHabit
(id, name, details, iconPath, timeGoal, timeSpent, userId, createdAt)
VALUES
(1,'Morning Run','5km run','icons/run.png',30,25,'cmf7u00000001ab12cd34ef56','2026-04-01 07:00:00'),
(2,'Read Book','Reading habit','icons/book.png',45,40,'cmf7u00000002ab12cd34ef57','2026-04-01 08:00:00'),
(3,'Meditation','Mindfulness','icons/meditation.png',15,15,'cmf7u00000003ab12cd34ef58','2026-04-01 09:00:00'),
(4,'Coding Practice','LeetCode','icons/code.png',60,55,'cmf7u00000004ab12cd34ef59','2026-04-01 10:00:00'),
(5,'Language Learning','Spanish','icons/language.png',20,18,'cmf7u00000005ab12cd34ef60','2026-04-01 11:00:00'),
(6,'Stretching','Mobility','icons/stretch.png',10,10,'cmf7u00000006ab12cd34ef61','2026-04-01 12:00:00'),
(7,'Journaling','Daily notes','icons/journal.png',15,12,'cmf7u00000007ab12cd34ef62','2026-04-01 13:00:00');

INSERT INTO WeeklyHabit
(id, name, details, iconPath, userId, createdAt)
VALUES
(1,'Gym 3x','Strength training','icons/gym.png','cmf7u00000001ab12cd34ef56','2026-04-02 09:00:00'),
(2,'Clean Apartment','Housekeeping','icons/clean.png','cmf7u00000002ab12cd34ef57','2026-04-02 09:10:00'),
(3,'Family Call','Stay connected','icons/phone.png','cmf7u00000003ab12cd34ef58','2026-04-02 09:20:00'),
(4,'Cycling','Weekend ride','icons/bike.png','cmf7u00000004ab12cd34ef59','2026-04-02 09:30:00'),
(5,'Meal Prep','Healthy meals','icons/food.png','cmf7u00000005ab12cd34ef60','2026-04-02 09:40:00'),
(6,'Swimming','Pool session','icons/swim.png','cmf7u00000006ab12cd34ef61','2026-04-02 09:50:00'),
(7,'Photography','Photo walk','icons/camera.png','cmf7u00000007ab12cd34ef62','2026-04-02 10:00:00');

INSERT INTO WeeklyHabitDay (id, habitId, day) VALUES
(1,1,'Monday'),
(2,2,'Saturday'),
(3,3,'Sunday'),
(4,4,'Saturday'),
(5,5,'Sunday'),
(6,6,'Wednesday'),
(7,7,'Friday');

INSERT INTO ActivityType
(id, name, details, color, iconPath, visibility, userId)
VALUES
(1,'Running','Outdoor cardio','#ff7043','icons/run.png','everyone','cmf7u00000001ab12cd34ef56'),
(2,'Reading','Books','#42a5f5','icons/book.png','friends','cmf7u00000002ab12cd34ef57'),
(3,'Meditation','Mental health','#ab47bc','icons/meditation.png','private','cmf7u00000003ab12cd34ef58'),
(4,'Programming','Software development','#66bb6a','icons/code.png','everyone','cmf7u00000004ab12cd34ef59'),
(5,'Language Study','Spanish','#ffa726','icons/language.png','friends','cmf7u00000005ab12cd34ef60'),
(6,'Stretching','Flexibility','#26c6da','icons/stretch.png','private','cmf7u00000006ab12cd34ef61'),
(7,'Journaling','Writing','#8d6e63','icons/journal.png','friends','cmf7u00000007ab12cd34ef62');

INSERT INTO ActivityEntry (id,date,note,typeId) VALUES
(1,'2026-05-01 07:30:00','Completed morning run',1),
(2,'2026-05-01 20:00:00','Read 50 pages',2),
(3,'2026-05-02 08:00:00','Meditation session',3),
(4,'2026-05-02 18:00:00','Solved coding tasks',4),
(5,'2026-05-03 17:00:00','Spanish lesson finished',5),
(6,'2026-05-03 09:00:00','Stretch routine done',6),
(7,'2026-05-04 21:00:00','Journal entry written',7);

INSERT INTO Notification
(id, createdAt, payload, type, userId)
VALUES
('cmf7n00000001jk55mn88pq11','2026-05-10 08:00:00','Daily habit reminder','habit_reminder','cmf7u00000001ab12cd34ef56'),
('cmf7n00000002jk55mn88pq12','2026-05-10 08:05:00','Reading goal reached','achievement','cmf7u00000002ab12cd34ef57'),
('cmf7n00000003jk55mn88pq13','2026-05-10 08:10:00','Meditation streak updated','streak','cmf7u00000003ab12cd34ef58'),
('cmf7n00000004jk55mn88pq14','2026-05-10 08:15:00','Coding habit reminder','habit_reminder','cmf7u00000004ab12cd34ef59'),
('cmf7n00000005jk55mn88pq15','2026-05-10 08:20:00','Language milestone reached','achievement','cmf7u00000005ab12cd34ef60'),
('cmf7n00000006jk55mn88pq16','2026-05-10 08:25:00','Stretching completed','progress','cmf7u00000006ab12cd34ef61'),
('cmf7n00000007jk55mn88pq17','2026-05-10 08:30:00','Journal streak updated','streak','cmf7u00000007ab12cd34ef62');

INSERT INTO DailyHabitStat
(id,completed,date,habitId,streakC,streakL)
VALUES
(1,TRUE,'2026-05-15 00:00:00',1,5,12),
(2,TRUE,'2026-05-15 00:00:00',2,14,20),
(3,TRUE,'2026-05-15 00:00:00',3,30,30),
(4,FALSE,'2026-05-15 00:00:00',4,0,9),
(5,TRUE,'2026-05-15 00:00:00',5,7,10),
(6,TRUE,'2026-05-15 00:00:00',6,18,22),
(7,FALSE,'2026-05-15 00:00:00',7,0,8);
```
