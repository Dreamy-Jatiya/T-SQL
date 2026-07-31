--Date Functions 
--Part – A: 
--1. Write a query to display the current date & time. Label the column Today_Date. 
SELECT GETDATE() AS TODAY_DATE

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(D,365,'2026-07-15') AS NEW_DATE

--3. Display the current date in a format that appears as may 5 1994 12:00AM. 
SELECT FORMAT(GETDATE(),'MMM d yyyy HH:Mmtt')

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(),'d MMM yyyy')

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(),'MMM d ,yy')

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
SELECT DATEDIFF(MONTH,'31-DEC-08','31-MAR-09')

--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
SELECT DATEDIFF(HOUR,'31-DEC-08 7:00','31-MAR-09 10:30')

--8. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY(GETDATE()) AS DATEE,MONTH(GETDATE()) AS MONTHH,YEAR(GETDATE()) AS YEARR

--9. Write a query that adds 5 years to current date.
SELECT DATEadd(yyyy,5,'2026-07-15')

--10. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH, -2, GETDATE()) AS NewDate

--11. Extract month from current date using DATENAME() and DATEPART() function.
SELECT DATENAME(MONTH,GETDATE()) AS MONTH_NAME
SELECT DATEPART(MONTH,GETDATE()) AS MONTH_NUMBER;

--12. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) AS LAST_DATE;

--13. Calculate your age in years and months.
SELECT
DATEDIFF(YEAR,'2007-09-08',GETDATE()) AS YEARS,
DATEDIFF(MONTH,'2007-09-08',GETDATE())%12 AS MONTHS;

-- Part - B : DEPOSIT Table
--14. Display all records where account date is in the year 2025.
SELECT * FROM DEPOSIT
WHERE YEAR(ADATE)=2025;

--15. Display all records where account date is in the month of March.
SELECT * FROM DEPOSIT
WHERE MONTH(ADATE)=3;

--16. Display records where account date is after '01-Jan-2025'.
SELECT * FROM DEPOSIT
WHERE ADATE>'2025-01-01';

--17. Display records where account date is before '01-Jan-2025'.
SELECT * FROM DEPOSIT
WHERE ADATE<'2025-01-01';

--18. Display records where day of account date is 1.
SELECT * FROM DEPOSIT
WHERE DAY(ADATE)=1;

--19. Display records where month of account date is greater than 6.
SELECT * FROM DEPOSIT
WHERE MONTH(ADATE)>6;

--20. Display records where year of account date is 2026.
SELECT * FROM DEPOSIT
WHERE YEAR(ADATE)=2026;

--21. Display number of accounts opened in each year.
SELECT YEAR(ADATE) AS YEAR,
COUNT(*) AS TOTAL_ACCOUNTS
FROM DEPOSIT
GROUP BY YEAR(ADATE);

--22. Display number of accounts opened in each month.
SELECT MONTH(ADATE) AS MONTH,
COUNT(*) AS TOTAL_ACCOUNTS
FROM DEPOSIT
GROUP BY MONTH(ADATE);

--23. Display maximum amount deposited in each year.
SELECT YEAR(ADATE) AS YEAR,
MAX(AMOUNT) AS MAX_AMOUNT
FROM DEPOSIT
GROUP BY YEAR(ADATE);

-- Part - C

--24. Display minimum amount deposited in each month.
SELECT MONTH(ADATE) AS MONTH,
MIN(AMOUNT) AS MIN_AMOUNT
FROM DEPOSIT
GROUP BY MONTH(ADATE);

--25. Display total amount deposited in each year.
SELECT YEAR(ADATE) AS YEAR,
SUM(AMOUNT) AS TOTAL_AMOUNT
FROM DEPOSIT
GROUP BY YEAR(ADATE);

--26. Display records where account date is between '01-Mar-2025' and '31-Dec-2025'.
SELECT * FROM DEPOSIT
WHERE ADATE BETWEEN '2025-03-01' AND '2025-12-31';

--27. Display records where account date is in the current year.
SELECT * FROM DEPOSIT
WHERE YEAR(ADATE)=YEAR(GETDATE());

--28. Display difference in days between today's date and account date.
SELECT ADATE,
DATEDIFF(DAY,ADATE,GETDATE()) AS DIFFERENCE_IN_DAYS
FROM DEPOSIT;