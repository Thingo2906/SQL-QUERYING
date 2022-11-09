--Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

 --Show who won the 1962 prize for literature.
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature';

--Give the name of the 'peace' winners since the year 2000, including 2000
select winner from nobel where subject = 'peace' and yr >= '2000';

--Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive.
select * from nobel where subject = 'literature' and yr >= 1980 and yr <= 1989;

--Show the winners with first name John
select winner from nobel where winner like 'John %';

--Show all details of the presidential winners:Theodore Roosevelt, Thomas Woodrow Wilson, Jimmy Carter, Barack Obama
SELECT * FROM nobel
 WHERE
 winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama')

--Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.
select yr, subject, winner from nobel 
where (subject = 'physics' and yr = 1980) 
or (subject = 'chemistry' and yr = 1984);

--Show the year, subject, and name of winners for 1980 excluding chemistry and medicine
select yr, subject, winner from nobel where yr = 1980 and not subject in ('chemistry', 'medicine');

--Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together 
--with winners of a 'Literature' prize in a later year (after 2004, including 2004)
select yr, subject, winner from nobel where 
(subject = 'Medicine' and yr < 1910) or (subject = 'Literature' and yr >= 2004);

--Find all details of the prize won by PETER GRÜNBERG
select * from nobel where winner like '%PETER GR_NBERG%';

--Find all details of the prize won by EUGENE O'NEILL

SELECT *
  FROM nobel 
  WHERE winner IN ('Eugene O''Neill');

--List the winners, year and subject where the winner 
--starts with Sir. Show the the most recent first, then by name order.
select winner, yr, subject from nobel where winner like 'Sir %' order by yr desc, winner;

--Show the 1984 winners and subject ordered by subject and winner name;
-- but list chemistry and physics last.
select winner, yr, subject from nobel 
where winner like 'Sir %' order by yr desc, winner;