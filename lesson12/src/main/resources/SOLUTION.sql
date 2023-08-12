DELETE FROM mark WHERE student_id IN (SELECT student_id FROM mark WHERE subject_id IN (SELECT subject_id from subject WHERE grade>=4));
DELETE FROM student WHERE id IN (SELECT student_id FROM mark WHERE subject_id IN (SELECT subject_id from subject WHERE grade>=4));


DELETE FROM mark WHERE mark < 4;

DELETE FROM student WHERE id IN (SELECT student_id FROM mark WHERE mark < 4);
DELETE FROM paymenttype WHERE name = 'Daily';
DELETE FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'Daily');
DELETE FROM mark WHERE mark < 7;