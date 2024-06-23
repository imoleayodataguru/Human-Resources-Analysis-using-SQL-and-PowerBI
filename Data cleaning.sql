SELECT *	 FROM `human resource`;

DESCRIBE `human resource`; 

-- Change name of the first column to be descriptive

ALTER TABLE `human resource`
rename column `ï»¿id` to emp_id;

-- str_to_date() : is used to convert string/text to date

select str_to_date(birthdate, "%m-%d-%y")
from `human resource` ;


update `human resource` 
set birthdate = case when birthdate like "%/%/%"
then date_format( str_to_date(birthdate, "%m/%d/%Y"), "%Y-%m-%d" )
else date_format( str_to_date(birthdate, "%m-%d-%Y"), "%Y-%m-%d" ) end ;

update `human resource` 
set hire_date = case when hire_date like "%/%/%"
then date_format( str_to_date(hire_date, "%m/%d/%Y"), "%Y-%m-%d" )
else date_format( str_to_date(hire_date, "%m-%d-%Y"), "%Y-%m-%d" ) end ;


ALTER TABLE `human resource` 
Modify hire_date date;

SELECT *	 FROM `human resource`;

-- HOW MANY EMPLOYEES WORK IN HEAD QUARTER VERSUS REMOTE

Create view Imoleayo as 
SELECT location, count(emp_id) `TOTAL EMPLOYEES`
FROM `human resource`
GROUP BY LOCATION;

-- show the age distribution of the employeetaa




