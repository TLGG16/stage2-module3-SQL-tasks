SELECT mark.* FROM mark WHERE mark.mark > 6 ORDER BY mark.mark DESC;
SELECT payment.* FROM payment WHERE payment.amount < 300 ORDER BY payment.amount ASC;
SELECT paymenttype.* FROM paymenttype ORDER BY paymenttype.name ASC;
SELECT student.* FROM student ORDER BY student.name DESC;
SELECT student.* FROM student JOIN payment ON payment.student_id = student.id WHERE payment.amount > 1000 ORDER BY student.birthday ASC;