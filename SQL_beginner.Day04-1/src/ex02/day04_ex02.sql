-- Создайте представление базы данных (с именем v_generated_dates),
-- в котором должны быть «сохранены» сгенерированные даты с 1 по 31 января 2022 года в типе DATE.
-- Не забудьте о порядке столбца сгенерированной_даты.

CREATE VIEW v_generated_dates AS
(SELECT days::DATE AS generated_dates
FROM generate_series('2022-01-01', '2022-01-31', interval '1 day') AS days
ORDER BY generated_dates);




