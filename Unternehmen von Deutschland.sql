select * from unternehmen_DE ;

DESC unternehmen_de;

select Name, Revenue, Profits from unternehmen_DE;

select Name, Revenue, Profits, Industry from unternehmen_DE where profits>10000000;

select sum(Employees) as"total" from unternehmen_DE;

select * from unternehmen_DE where Industry = "Automotive" 
order by profits desc;

select Industry, SUM(Profits) as "Total_Profits" from unternehmen_DE
group by Industry
order by Total_Profits desc;

select Industry, SUM(Profits) as "Total_Profits", sum(Employees) as "Total_Employes_by_sector",(sum(Employees)/4228802)*100 as "Percentage_of_Emoloyees %"
from unternehmen_DE
group by Industry
order by Total_Profits desc;

select Headquarters, sum(Employees) as "Total_Employees_by_City" from unternehmen_DE 
group by Headquarters order by Total_Employees_by_City desc;

select Name from unternehmen_DE where Headquarters = "Bonn"







