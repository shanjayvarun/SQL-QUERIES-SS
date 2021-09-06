MySQL TASK.txt
SQL L1
    -SELECT title 
        FROM movies;
    -SELECT director 
        FROM movies;
    -SELECT director , title 
        FROM movies;
    -SELECT year , title 
        FROM movies;
    -SELECT *
        FROM movies;
SQL L2
    -SELECT * 
    FROM movies
    where id =6;
    -SELECT * 
    FROM movies
    where year
    between 2000 and 2010;
    -SELECT * 
    FROM movies
    where year not
    between 2000 and 2010;
    -SELECT * 
    FROM movies
    where id in (1,2,3,4,5);
SQL L3
    -SELECT *
    FROM movies
    where title like "%toy%";
    -SELECT *
    FROM movies
    where director like "%john lasseter%";
    -SELECT *
    FROM movies
    where director not like "%john lasseter%";
    -SELECT *
    FROM movies
    where title like "%wall%";
SQL L4
    -select distinct director
    from movies
    order by director;
    -select *
    from movies
    order by year desc
    limit 4;
    -select *
    from movies
    order by title
    limit 5;
    -select *
    from movies
    order by title
    limit 5,5;
SQL L5
    -SELECT * 
    FROM north_american_cities
    where country like "%canada%";
    -SELECT * 
    FROM north_american_cities
    where country like "%united states%"
    order by latitude desc;
    -SELECT * 
    FROM north_american_cities
    where longitude < -87.629798
    order by longitude;
    -SELECT *
    FROM north_american_cities
    where country = "Mexico"
    order by population desc
    limit 2;
    -SELECT *
    FROM north_american_cities
    where country ="United States"
    order by population desc
    limit 2,2;
SQL L6
    -SELECT *
    FROM movies
    inner join boxoffice
    on movies.id = boxoffice.movie_id;
    -SELECT *
    FROM movies
    inner join boxoffice
    on movies.id = boxoffice.movie_id
    where international_sales > domestic_sales;
    -SELECT *
    FROM movies
    inner join boxoffice
    on movies.id = boxoffice.movie_id
    order by rating desc;
SQL L7
    -SELECT distinct building
    FROM employees;
    -SELECT *
    FROM buildings;
    -SELECT Distinct Building_name, Role
    FROM Buildings
    left join employees
    On Buildings.building_name = employees.building;
SQL L8
    -SELECT name,role 
    FROM employees
    where building is null;
    -SELECT *
    FROM buildings
    left join employees
    on buildings.building_name=employees.building
    where building is null;
SQL L9
    -SELECT title,(Domestic_sales+International_sales)/1000000 as combined_sales
    FROM movies
    left join boxoffice
    on id=movie_id;
    -SELECT title,(rating)*10 as percent
    FROM movies
    left join boxoffice
    on id=movie_id;
    -SELECT title
    FROM movies
    where (year)%2=0;
SQL L10
    -SELECT name,max(Years_employed) 
    FROM employees;
    -SELECT role,avg(years_employed)
    FROM employees 
    group by role;
    -SELECT total(years_employed),building
    FROM employees 
    group by building;
SQL L11
    -SELECT role,count(*) as no_of_artists
    FROM employees
    where role = "Artist";
    -SELECT role,sum(years_employed)
    FROM employees
    where role = "Engineer";
SQL L12
    -SELECT distinct director,count(*) 
    FROM movies
    group by director;
    -SELECT distinct director,total(Domestic_sales+International_sales) as total_sales
    FROM boxoffice
    left join movies
    on movie_id = id
    group by director;
SQL L13
    -INSERT INTO Movies(Id,Title,Director,Year,Length_minutes) 
    VALUES (4, "Toy Story 4", "John Lasseter", 2017, 123);
    -INSERT into Boxoffice (Movie_id,Rating,Domestic_sales,International_sales) 
     values (11,8.7, 340000000,270000000);
SQL L14
    -UPDATE movies SET director = "John Lasseter" 
    where id =2;
    -UPDATE movies SET year = 1999
    where id =3;
    -UPDATE movies SET director = "Lee Unkrich",title = "Toy Story 3"
    where id =11;
SQL L15
    -delete from movies
    where year < 2005;
    -delete from movies
    where director = "Andrew Stanton";
SQL L16
    -CREATE TABLE Database (
    Name  TEXT,
    Version float,
    Download_count INTEGER);
SQL L17
    -ALTER TABLE movies
    ADD Aspect_ratio Float 
    DEFAULT null;
    -Alter table movies
    add language
    text default "english";
SQL L18
    -drop table movies;
    -drop table boxoffice;





