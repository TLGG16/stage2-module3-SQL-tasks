ALTER TABLE student ALTER COLUMN birthday DATE NOT NULL;

ALTER TABLE mark ALTER COLUMN mark INT CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE mark ALTER COLUMN student_id BIGINT NOT NULL;
ALTER TABLE mark ALTER COLUMN subject_id BIGINT NOT NULL;

ALTER TABLE subject ALTER COLUMN grade INT CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE paymenttype ADD UNIQUE (name);

ALTER TABLE payment ALTER COLUMN type_id BIGINT NOT NULL;
ALTER TABLE payment ALTER COLUMN amount decimal NOT NULL;
ALTER TABLE payment ALTER COLUMN payment_date DateTime NOT NULL;

ALTER TABLE payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymenttype(id);

ALTER TABLE payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);