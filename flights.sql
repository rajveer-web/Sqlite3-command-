CREATE TABLE flights(
   ...> id integer primary key autoincrement,
   ...> origin TEXT NOT NULL,
   ...> destination TEXT NOT NULL,
   ...> duration INTEGER NOT NULL
   ...> );

insert into flights (origin,destination,duration)values("NZ","Australia",1400);

sqlite> .TABLES
Error: unknown command or invalid arguments:  "TABLES". Enter ".help" for help
sqlite> .tables
flights
sqlite> select * from flights;
sqlite> insert into flights (origin,destination,duration)values("NZ","Australia",1400);
sqlite> select * from flights;
1|NZ|Australia|1400
sqlite> insert into flights (origin,destination,duration)values("New york","London",140);
sqlite> insert into flights (origin,destination,duration)values("Lima","New York",435);
sqlite> insert into flights (origin,destination,duration)values("Moscow","Paris",245);


sqlite> select * from flights;
1|NZ|Australia|1400
2|New york|London|140
3|Lima|New York|435
4|Moscow|Paris|245



sqlite> .mode columns
sqlite> . headers yes
sqlite> select * from flights;
id  origin    destination  duration
--  --------  -----------  --------
1   NZ        Australia    1400    
2   New york  London       140     
3   Lima      New York     435     
4   Moscow    Paris        245   

sqlite> select * from flights where origin = "New york";
id  origin    destination  duration
--  --------  -----------  --------
2   New york  London       140    



sqlite> select * from flights where duration > 500;


select * from flights where duration > 500 and destination = "Paris";

select * from flights where duration > 500 or destination = "Paris";

select * from flights where origin IN ("New York","Paris");

select * from flights where origin like "%a%";

Update flights 
set duration = 430 where origin = "New York" and destination = "London";
