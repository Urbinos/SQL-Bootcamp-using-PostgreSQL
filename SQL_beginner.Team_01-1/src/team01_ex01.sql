insert into currency values (100, 'EUR', 0.85, '2022-01-01 13:29');
insert into currency values (100, 'EUR', 0.79, '2022-01-08 13:29');

SELECT COALESCE("user".name, 'not defined') AS name,
       COALESCE(lastname, 'not defined') AS lastname,
       currency.name AS currency_name,
       balance.money * COALESCE(
                       (SELECT rate_to_usd
                        FROM currency
                        WHERE currency.id = balance.currency_id AND currency.updated < balance.updated
                        ORDER BY currency.updated DESC
                        LIMIT 1),
                       (SELECT rate_to_usd
                        FROM currency
                        WHERE currency.id = balance.currency_id AND currency.updated > balance.updated
                        ORDER BY currency.updated
                        LIMIT 1)
                       )
        AS currency_in_usd
FROM "user"
        RIGHT JOIN balance ON "user".id = balance.user_id
        JOIN currency ON balance.currency_id = currency.id
GROUP BY 1, 2, 3, 4
ORDER BY 1 DESC, 2, 3;
