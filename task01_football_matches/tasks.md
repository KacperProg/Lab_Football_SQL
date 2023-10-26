# Football Matches - Tasks

Each of the questions/tasks below can be answered using a `SELECT` query. When you find a solution copy it into the code block under the question before pushing your solution to GitHub.

1) Find all the matches from 2017.

```sql

SELECT * FROM matches WHERE season='2017';

```

2) Find all the matches featuring Barcelona.

```sql

SELECT * FROM matches WHERE hometeam='Barcelona' OR awayteam='Barcelona';

```

3) What are the names of the Scottish divisions included?

```sql

SELECT name FROM divisions WHERE country='Scotland';

```

4) Find the value of the `code` for the `Bundesliga` division. Use that code to find out how many matches Freiburg have played in that division. HINT: You will need to query both tables

```sql
SELECT code FROM divisions WHERE name='Bundesliga';

SELECT COUNT(*) FROM matches WHERE division_code='D1' AND (hometeam='Freiburg' OR awayteam='Freiburg') ;
```

5)  Find the teams which include the word "City" in their name. HINT: Not every team has been entered into the database with their full name, eg. `Norwich City` are listed as `Norwich`. If your query is correct it should return four teams.

```sql

4 teams found + 1 for Norwich City // SELECT DISTINCT awayteam FROM matches WHERE awayteam LIKE '%City';


```

6) How many different teams have played in matches recorded in a French division?

```sql
F1 and F2 division_code // SELECT * FROM divisions WHERE country='France';


```

7) Have Huddersfield played Swansea in any of the recorded matches?

```sql

YES -- SELECT * FROM matches WHERE (hometeam='Huddersfield' AND awayteam='Swansea') OR (awayteam='Huddersfield' AND hometeam='Swansea');

```

8) How many draws were there in the `Eredivisie` between 2010 and 2015?

```sql

N1 -- SELECT code FROM divisions WHERE name='Eredivisie';

431 -- SELECT COUNT(*) FROM matches WHERE ftr='D' AND division_code='N1' AND season<2016 AND season>2009;


```

9) Select the matches played in the Premier League in order of total goals scored (`fthg` + `ftag`) from highest to lowest. When two matches have the same total the match with more home goals (`fthg`) should come first. 

```sql
E0 -- SELECT code FROM divisions WHERE name='Premier League';
SELECT * FROM matches WHERE division_code='E0' ORDER BY (fthg+ftag) DESC, fthg DESC;

```

10) Find the name of the division in which the most goals were scored in a single season and the year in which it happened.

```sql

--> DOESNT WORK BUT I TRIED THIS: SELECT COUNT(division_code) FROM matches GROUP BY season AND (fthg+ftag) ORDER BY (fthg+ftag) DESC;

```

### Useful Resources

- [Filtering results](https://www.w3schools.com/sql/sql_where.asp)
- [Ordering results](https://www.w3schools.com/sql/sql_orderby.asp)
- [Grouping results](https://www.w3schools.com/sql/sql_groupby.asp)