ALTER TABLE student MODIFY birthday DATE NOT NULL;

ALTER TABLE mark MODIFY mark INT CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE mark MODIFY student_id BIGINT NOT NULL;
ALTER TABLE mark MODIFY subject_id BIGINT NOT NULL;

ALTER TABLE subject MODIFY grade INT CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE paymenttype ADD UNIQUE (name);

ALTER TABLE payment MODIFY type_id BIGINT NOT NULL;
ALTER TABLE payment MODIFY amount decimal NOT NULL;
ALTER TABLE payment MODIFY payment_date DateTime NOT NULL;

ALTER TABLE payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymenttype(id);

ALTER TABLE payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);