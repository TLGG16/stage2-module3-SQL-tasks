INSERT INTO student (name, birthday, groupnumber) VALUES ('John', '2000-01-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Chris', '2000-01-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Carl', '2000-01-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Oliver', '2000-01-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('James', '2000-01-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Lucas', '2000-01-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Henry', '2000-01-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jacob', '2000-01-01', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Logan', '2000-01-01', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Danik', '2000-01-01', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Ilya', '2000-01-01', 5);

INSERT INTO subject (name, grade) VALUES ('Art', 1);
INSERT INTO subject (name, grade) VALUES ('Music', 1);
INSERT INTO subject (name, grade) VALUES ('Geography', 2);
INSERT INTO subject (name, grade) VALUES ('History', 2);
INSERT INTO subject (name, grade) VALUES ('PE', 3);
INSERT INTO subject (name, grade) VALUES ('Math', 3);
INSERT INTO subject (name, grade) VALUES ('Science', 4);
INSERT INTO subject (name, grade) VALUES ('IT', 4);
INSERT INTO subject (name, grade) VALUES ('Subject1', 5);
INSERT INTO subject (name, grade) VALUES ('Subject2', 5);

INSERT INTO paymenttype (name) VALUES ('DAILY'), ('WEEKLY'), ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES (2, 50.00, NOW(), 1), (3, 100.00, NOW(), 4), (2, 50.00, NOW(), 7), (1, 10.00, NOW(), 5);

INSERT INTO mark (student_id, subject_id, mark) VALUES (2, 1, 8), (4, 3, 5), (5, 4, 9), (8, 6, 4), (9, 5, 9);
