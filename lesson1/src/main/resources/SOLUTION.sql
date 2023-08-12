CREATE TABLE Student
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL
);

CREATE TABLE Subject
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    grade INT NOT NULL
);

CREATE TABLE PaymentType
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Payment
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT NOT NULL,
    amount DECIMAL NOT NULL,
    student_id BIGINT NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (type_id) REFERENCES paymentType(id),
    FOREIGN KEY (student_id) REFERENCES student(id)
);

CREATE TABLE Mark
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);

