-- Include table data insertion, updation, deletion and select scripts
use moviecruiser;

insert into user(us_id,us_name) values(1,"Ajay");
insert into user(us_id,us_name) values(2,"Vijay");



insert into movie_item(me_id,me_name,me_price,me_active,me_date_of_launch,me_category,me_image,me_fav) values (1,"Avengers:Endgame",2.798,"Yes","2019-04-22","Superhero","https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg","Yes");
insert into movie_item(me_id,me_name,me_price,me_active,me_date_of_launch,me_category,me_image,me_fav) values (2,"Terminator:Dark Fate",261.1,"Yes","2019-10-23","Sci-Fiction","https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/Terminator_Dark_Fate_poster.jpg/220px-Terminator_Dark_Fate_poster.jpg","No");
insert into movie_item(me_id,me_name,me_price,me_active,me_date_of_launch,me_category,me_image,me_fav) values (3,"Star Wars: The Rise of Skywalker",1.074,"Yes","2019-12-16","Sci Fiction","https://upload.wikimedia.org/wikipedia/en/a/af/Star_Wars_The_Rise_of_Skywalker_poster.jpg","Yes");
insert into movie_item(me_id,me_name,me_price,me_active,me_date_of_launch,me_category,me_image,me_fav) values (4,"Aladdin(2019)",1.051,"Yes","2019-04-24","Romance","https://upload.wikimedia.org/wikipedia/en/9/9a/Aladdin_%28Official_2019_Film_Poster%29.png","No");
insert into movie_item(me_id,me_name,me_price,me_active,me_date_of_launch,me_category,me_image,me_fav) values (5,"Booksmart",24.9,"Yes","2019-03-10","Comedy","https://upload.wikimedia.org/wikipedia/en/0/09/Booksmart_%282019_film_poster%29.png","Yes");