DELETE mark, payment, student FROM mark
JOIN payment ON mark.student_id = payment.student_id
JOIN student ON mark.student_id = student.id
WHERE student.groupnumber >= 4;


DELETE FROM student where id in (select student_id from mark where mark<4);
DELETE payment, paymenttype FROM payment
JOIN paymenttype ON payment.type_id = paymenttype.id
WHERE paymenttype.name = 'Daily'

DELETE FROM mark WHERE mark < 7;