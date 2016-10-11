alter procedure overall_test_analysis  -- overall_test_analysis 'true'
@Approvalflag varchar
as
begin 

select count ( case when Approvalflag = 'false' then '' end) as 'false',
count ( case when Approvalflag = 'true' then '' end) as 'true' 
from resultapproval

end