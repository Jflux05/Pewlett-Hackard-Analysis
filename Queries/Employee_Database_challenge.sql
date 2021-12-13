-- Challenge Deliverable 1: Create A Table for the Number of Retiring Employees by Title
SELECT e.emp_no, 
				e.first_name, 
				e.last_name,
				t.title, 
				t.from_date, 
				t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
    ON (e.emp_no = t.emp_no)
INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
    AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows & create a unique_titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
					rt.first_name,
					rt.last_name,
					rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

--Determine the number of employees by their most recent job title who are about to retire
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


-- Challenge Deliverable 2: Create a mentorship eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
		e.first_name, 
		e.last_name, 
		e.birth_date,
        de.from_date, 
		de.to_date,
		t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
    	ON (e.emp_no = de.emp_no)
			INNER JOIN titles AS t
				ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility

-- Eligible mentorship candidates count by department
SELECT d.dept_name, COUNT(me.emp_no)
INTO ment__dept_candidate_count
FROM mentorship_eligibility as me
INNER JOIN dept_emp as de
	ON (me.emp_no = de.emp_no)
INNER JOIN departments as d
	ON (de.dept_no = d.dept_no)
GROUP BY d.dept_name
ORDER BY COUNT(me.emp_no) DESC;

