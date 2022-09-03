# mysql-Darabase

 
:arrow_right: We used the following query to make a table which include userid, user final grade, Row grade max, course
short name, course full name
```
select g.id, g.userid,  g.itemid, g.finalgrade, c.id, c.fullname, c.shortname, u.username from mdl_user u, mdl_grade_grades g, mdl_course c where g.itemid c.id and g.userid = u.id;
```
