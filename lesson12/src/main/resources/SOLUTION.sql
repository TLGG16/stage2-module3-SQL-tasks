--DELETE FROM mark WHERE student_id IN (SELECT student_id FROM mark WHERE subject_id IN (SELECT subject_id from subject WHERE grade>=4));
--DELETE FROM student WHERE id IN (SELECT student_id FROM mark WHERE subject_id IN (SELECT subject_id from subject WHERE grade>=4));
--DELETE FROM mark WHERE student_id IN (SELECT id from student where groupnumber >=4);
--DELETE FROM payment WHERE student_id IN (SELECT id from student where groupnumber >=4);
--DELETE FROM student WHERE groupnumber >=4;
DELETE mark, payment, student FROM mark
JOIN payment ON mark.student_id = payment.student_id
JOIN student ON mark.student_id = student.id
WHERE student.groupnumber >= 4;


DELETE FROM student where id in (select student_id from mark where mark<4);
--DELETE FROM mark WHERE mark < 4;

--DELETE FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'Daily');
--DELETE FROM paymenttype WHERE name = 'Daily';
DELETE payment, paymenttype FROM payment
JOIN paymenttype ON payment.type_id = paymenttype.id
WHERE paymenttype.name = 'Daily'

DELETE FROM mark WHERE mark < 7;