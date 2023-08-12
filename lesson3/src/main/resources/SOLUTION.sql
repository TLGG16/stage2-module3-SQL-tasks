ALTER TABLE student drop COLUMN birthday;
ALTER TABLE student add COLUMN birthday DATE NOT NULL;

ALTER TABLE mark add CONSTRAINT CHK_const CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE mark drop constraint student_id;
ALTER TABLE mark drop constraint subject_id;
ALTER TABLE payment ADD CONSTRAINT student_id foreign key (student_id) references student(id) NOT NULL;
ALTER TABLE payment ADD CONSTRAINT subject_id foreign key (subject_id) references subject(id) NOT NULL;

ALTER TABLE subject add CONSTRAINT CHK_const2 CHECK (grade >= 1 AND grade <= 5);


ALTER TABLE paymenttype ADD UNIQUE (name);

ALTER TABLE payment modify COLUMN type_id BIGINT NOT NULL;
ALTER TABLE payment modify COLUMN amount decimal NOT NULL;
ALTER TABLE payment modify COLUMN payment_date DateTime NOT NULL;

ALTER TABLE payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymenttype(id);

ALTER TABLE payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);