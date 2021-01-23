select * from department;
select * from physician ;
select * from affiliated_with;
select * from patient
select * from nurse;
select * from appointment

--find general medicine doctors name
select a.name, b.department, c.name from physician a
join affiliated_with b
join department c
on c.departmentid= b.department
on b.physician = a.employeeid
where b.department=2

--find which patient - doctor visit
select a.name patient_name, b.name doctor_name from patient a
join physician b
on a.pcp = b.employeeid

--find room details
select * from room
select unavailable, count(*) from room
group by unavailable

--total patient count on blockcode=2
select count(*) from room where blockcode=2

--check procedure details
select * from undergoes

-- find hospital workload such as procedure time and doctors, nurse details
select a.name as doctor_name, b.name as nurse_name, c.dateundergoes as proceduretime
from physician a
join nurse b
join undergoes c
on b.employeeid= c.assistingnurse
on a.employeeid = c.physician
where c.physician=3

--patient mdeication and priscription details
select * from medication;
select a.name, b.dose, c.name,c.brand from patient a
join prescribes b
join medication c
on c.code = b.medication
on a.ssn = b.patient

--trained in procedures
select * from procedures;
select * from trained_in;
select treatment, count(*) from trained_in group by treatment