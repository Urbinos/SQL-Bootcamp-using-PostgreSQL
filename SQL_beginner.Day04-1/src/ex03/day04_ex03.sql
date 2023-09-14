-- Напишите оператор SQL, который возвращает пропущенные дни для посещений людей в январе 2022 года.
-- Используйте v_generated_dates представление для этой задачи
-- отсортируйте результат по столбцу Missing_date.

SELECT generated_dates AS missing_date
FROM v_generated_dates
         LEFT JOIN person_visits AS ps
                   ON v_generated_dates.generated_dates = ps.visit_date
WHERE ps.visit_date IS NULL
ORDER BY missing_date;