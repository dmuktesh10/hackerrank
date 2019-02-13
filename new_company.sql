/*
company-company_code, founder
lead_manager-lead_manager_code,company_code
senior_manager-senior_manager_code, lead_manager_code, company_code
manager-manager_code, senior_manager_code, lead_manager_code, company_code
employee-employee_code,manager_code, senior_manager_code, lead_manager_code, company_code
*/
select c_c, count(distinct lm_c), count(distinct sm_c), count(distinct m_c),count(distinct ec) from (select distinct company.company_code as c_c,
company.founder as f,
lead_manager.lead_manager_code as lm_c,
senior_manager.senior_manager_code as sm_c,
manager.manager_code as m_c,
employee.employee_code as ec from
company inner join lead_manager on company.company_code=lead_manager.company_code
inner join senior_manager on lead_manager.lead_manager_code=senior_manager.lead_manager_code
inner join manager on senior_manager.senior_manager_code=manager.senior_manager_code
inner join employee on manager.manager_code=employee.manager_code
order by company.company_code, lead_manager.lead_manager_code, senior_manager.senior_manager_code,manager.manager_code, employee.employee_code) group by c_c;
