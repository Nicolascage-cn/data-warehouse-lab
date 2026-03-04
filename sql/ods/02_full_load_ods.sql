-- 全量覆盖同步：nico_lab -> dw_lab

TRUNCATE TABLE dw_lab.ods_orders;
INSERT INTO dw_lab.ods_orders SELECT * FROM nico_lab.orders;

TRUNCATE TABLE dw_lab.ods_order_items;
INSERT INTO dw_lab.ods_order_items SELECT * FROM nico_lab.order_items;

TRUNCATE TABLE dw_lab.ods_payments;
INSERT INTO dw_lab.ods_payments SELECT * FROM nico_lab.payments;

TRUNCATE TABLE dw_lab.ods_customers;
INSERT INTO dw_lab.ods_customers SELECT * FROM nico_lab.customers;

TRUNCATE TABLE dw_lab.ods_products;
INSERT INTO dw_lab.ods_products SELECT * FROM nico_lab.products;