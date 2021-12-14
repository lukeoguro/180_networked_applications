SELECT item, menu_price, ingredient_cost,
       round(13.0 / 60 * prep_time, 2) AS labor,
       menu_price - ingredient_cost - round(13.0 / 60 * prep_time, 2) AS profit
  FROM menu_items
 ORDER BY profit DESC;