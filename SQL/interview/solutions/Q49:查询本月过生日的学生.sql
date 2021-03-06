-- ########################################################
--Q49:查询本月过生日的学生
-- ########################################################
select
  *
from student
where
  datediff(
    mm,
    datename(yy, getdate()) + right(convert(varchar(10), sage, 120), 6),
    getdate()
  ) = 0;
