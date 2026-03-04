SELECT 'orders' AS t,
  (SELECT COUNT(*) FROM nico_lab.orders) AS src_cnt,
  (SELECT COUNT(*) FROM dw_lab.ods_orders) AS ods_cnt
UNION ALL
SELECT 'order_items',
  (SELECT COUNT(*) FROM nico_lab.order_items),
  (SELECT COUNT(*) FROM dw_lab.ods_order_items)
UNION ALL
SELECT 'payments',
  (SELECT COUNT(*) FROM nico_lab.payments),
  (SELECT COUNT(*) FROM dw_lab.ods_payments)
UNION ALL
SELECT 'customers',
  (SELECT COUNT(*) FROM nico_lab.customers),
  (SELECT COUNT(*) FROM dw_lab.ods_customers)
UNION ALL
SELECT 'products',
  (SELECT COUNT(*) FROM nico_lab.products),
  (SELECT COUNT(*) FROM dw_lab.ods_products);

SELECT 'orders_sum' AS metric,
  (SELECT SUM(total_amount) FROM nico_lab.orders) AS src_value,
  (SELECT SUM(total_amount) FROM dw_lab.ods_orders) AS ods_value;