SELECT 
    s.name AS school_name,
    st.enrolled_at::date AS enrollment_date,
    COUNT(st.id) AS total_students,
    SUM(c.price) AS total_revenue
FROM students st
JOIN courses c ON st.course_id = c.id
JOIN schools s ON c.school_id = s.id
WHERE c.name LIKE 'data%'
GROUP BY s.name, st.enrolled_at::date
ORDER BY enrollment_date DESC;
