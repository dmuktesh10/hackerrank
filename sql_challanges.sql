-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
select name from students where marks > 75 order by RIGHT(name,3) asc, id asc;

-- https://www.hackerrank.com/challenges/name-of-employees/problem
select name from employee order by name asc;


-- https://www.hackerrank.com/challenges/salary-of-employees/problem
select name from employee where salary > 2000 and months < 10 order by employee_id;

-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
select 
  case
    when A + B > C then
      case
        when A=B and B=C then
          'Equilateral'
        when A=B or B=C or A=C then
          'Isosceles'
        else
          'Scalene'
        end
      else
        'Not A Triangle'
  end 
from triangles;

-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
select count(*) from city where population > 100000    

