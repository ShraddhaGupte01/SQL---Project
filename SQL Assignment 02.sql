create database Assignment02;

#Q01 To find proportion of staff leaving

select attrition, count(*)
from `hr analytics`
group by attrition
having count(*)>1;
select count(`EmployeeNumber`) From `hr analytics`;
select 237/1470*100.0 as`Staff Leaving`;

#Q02 Avg age of employees in each department

select Department, avg(age) as `Avg Age` from `hr analytics`
group by Department;
#Q03 Highest attrition
select `EducationField`,count(Attrition) AS `TotalAttrition`,`TotalWorkingYears`,`MonthlyIncome`
from `hr analytics`
where(Attrition = 1) and (`TotalWorkingYears`<5) and (`MonthlyIncome` between 2000 and 4000)
group by `EducationField`
order by `TotalAttrition`desc;

#Q04  What is the average salary hike for the employees with work experience between 8 years to 10 years

select avg(`PercentSalaryHike`) as `average hike having work exp between 8 to 10 yrs`
from `hr analytics`
where (`Totalworkingyears` between 8 and 10);

#Q5 (A)

select `JobRole`, count(Attrition) as `No. of Job Left`
from `hr analytics`
where ((Attrition=1) and `MonthlyIncome`> (select avg(`MonthlyIncome`) from `hr analytics`))
group by `JobRole`
order by `No. of Job Left` desc;

#Q5 (B)

select `JobRole`, count(Attrition) as `No. of Job Left`
from `hr analytics`
where ((Attrition=1) and `MonthlyIncome`< (select avg(`MonthlyIncome`) from `hr analytics`))
group by`JobRole`
order by `No. of Job Left`desc;
