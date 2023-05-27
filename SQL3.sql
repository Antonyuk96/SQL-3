#Отсортировать зарплаты по возрастанию
SELECT * FROM staff
ORDER BY salary;

#Отсортировать зарплаты по убыванию
SELECT *
FROM staff
ORDER BY salary DESC;

#Вывести 5 максимальных заработных плат (saraly)
SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;

#Посчитать суммарную зарплату (salary) по каждой специальности (роst)
SELECT 
	post,
    SUM(salary) AS sum_salary
FROM staff
GROUP BY post;


#Найти кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
SELECT
	COUNT(id) AS count_id
FROM staff
WHERE post = "Рабочий" AND age > 24 AND age <= 49;

#Найти количество специальностей
SELECT 
	COUNT(DISTINCT post) AS count_post
FROM staff;

#Вывести специальности, средни возраст по которым меньше 30 лет
SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) <30;
