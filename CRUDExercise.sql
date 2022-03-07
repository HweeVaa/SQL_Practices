insert into shirts (article, color, shirt_size,last_worn)
values ('polo shirt','purple','M',50);

SELECT article, color FROM shirts;

SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size='M';

UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

UPDATE shirts SET last_worn = 0 WHERE last_worn = 15;
