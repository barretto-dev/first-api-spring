INSERT INTO address (id, street_name, house_number, zip_code) VALUES ('783db5a2-76fd-42eb-aacc-0dcd4bc79ba0', 'Rua A', '90', '49010111');
INSERT INTO address (id, street_name, house_number, zip_code) VALUES ('8ddaf208-24c4-4e86-ad48-f40748ee1685', 'Rua B', '56', '49010585');

-- Permissions USERS
INSERT INTO permission (id, name) VALUES ('0ff8c494-619e-4bed-9c06-ca9691a49213', 'UPDATE-MY-INFORMATIONS');
INSERT INTO permission (id, name) VALUES ('bae8bbc4-96e5-4485-8be6-d29d9c618780', 'CREATE-ADMIN');
INSERT INTO permission (id, name) VALUES ('1f23b414-f4d5-4900-9fd0-dfa58b6d026c', 'INACTIVATE-CUSTOMER');
INSERT INTO permission (id, name) VALUES ('98e78f2b-1753-447c-a9e0-56965361f39f', 'SELECT-CUSTOMER');

-- Permissions PRODUCT
INSERT INTO permission (id, name) VALUES ('56b1637d-fbbc-4945-929d-933b541f47d9', 'CREATE-PRODUCT');
INSERT INTO permission (id, name) VALUES ('c3a57dcf-33f6-46e2-a645-ecd7bc7d4741', 'UPDATE-PRODUCT');
INSERT INTO permission (id, name) VALUES ('88398ed7-f8b9-4996-9226-f7b5b87c6e89', 'SELECT-PRODUCT');
INSERT INTO permission (id, name) VALUES ('7bceffc4-5983-4aa8-8ac7-978235fcb077', 'SELECT-PRODUCTS');

-- Permissions ORDER
INSERT INTO permission (id, name) VALUES ('f2afca6a-da66-4dc3-8395-83faf136fc34', 'CREATE-ORDER');
INSERT INTO permission (id, name) VALUES ('5f3356ee-7930-47a3-89c5-28a01e712859', 'SELECT-MY-ORDERS');
INSERT INTO permission (id, name) VALUES ('25f6c7d2-5d1a-4a81-bdaa-1b331b18c31a', 'SELECT-CUSTOMER-ORDERS');
INSERT INTO permission (id, name) VALUES ('94400a1d-a19b-4bd4-8889-404b0c15472a', 'SELECT-MY-ORDER');
INSERT INTO permission (id, name) VALUES ('d0b98093-1b59-4301-87d1-087ed4668791', 'SELECT-CUSTOMER-ORDER');

-- Roles
INSERT INTO role (id, name) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', 'ADMIN');
INSERT INTO role (id, name) VALUES ('d646b0a8-da47-41e3-87e2-7ed9fb2836be', 'CUSTOMER');

-- Permissions of ADMIN:
-- UPDATE-MY-INFORMATIONS | CREATE-ADMIN | INACTIVATE-CUSTOMER | SELECT-CUSTOMER | CREATE-PRODUCT | UPDATE-PRODUCT
-- SELECT-PRODUCT | SELECT-PRODUCTS | SELECT-CUSTOMER-ORDERS | SELECT-CUSTOMER-ORDER
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '0ff8c494-619e-4bed-9c06-ca9691a49213');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', 'bae8bbc4-96e5-4485-8be6-d29d9c618780');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '1f23b414-f4d5-4900-9fd0-dfa58b6d026c');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '98e78f2b-1753-447c-a9e0-56965361f39f');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '56b1637d-fbbc-4945-929d-933b541f47d9');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', 'c3a57dcf-33f6-46e2-a645-ecd7bc7d4741');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '88398ed7-f8b9-4996-9226-f7b5b87c6e89');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '7bceffc4-5983-4aa8-8ac7-978235fcb077');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', '25f6c7d2-5d1a-4a81-bdaa-1b331b18c31a');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d4d1aee0-0c3b-4cb8-8b22-e1ec162bb105', 'd0b98093-1b59-4301-87d1-087ed4668791');

-- Permissions of CUSTOMER:
-- UPDATE-MY-INFORMATIONS | CREATE-ORDER | SELECT-MY-ORDERS | SELECT-MY-ORDER
INSERT INTO role_permission (role_id, permission_id) VALUES ('d646b0a8-da47-41e3-87e2-7ed9fb2836be', '0ff8c494-619e-4bed-9c06-ca9691a49213');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d646b0a8-da47-41e3-87e2-7ed9fb2836be', 'f2afca6a-da66-4dc3-8395-83faf136fc34');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d646b0a8-da47-41e3-87e2-7ed9fb2836be', '5f3356ee-7930-47a3-89c5-28a01e712859');
INSERT INTO role_permission (role_id, permission_id) VALUES ('d646b0a8-da47-41e3-87e2-7ed9fb2836be', '94400a1d-a19b-4bd4-8889-404b0c15472a');

-- users
INSERT INTO users (id, fisrt_name, last_name, email, birthdate, address_id, role_id) VALUES ('08d41b45-eace-4915-86a0-5544bddc0aff', 'admin', '01', 'admin@gmail.com', '1994-06-20', '783db5a2-76fd-42eb-aacc-0dcd4bc79ba0', 'd4d1aee0-0c3b-4cb8-8b22-e1ec162bb105');
INSERT INTO users (id, fisrt_name, last_name, email, birthdate, address_id, role_id) VALUES ('d8c74271-ed54-49ff-b18e-9a2e7e1197a1', 'customer', '01', 'customer@gmail.com', '1996-04-21', '8ddaf208-24c4-4e86-ad48-f40748ee1685', 'd646b0a8-da47-41e3-87e2-7ed9fb2836be');

-- products
INSERT INTO product (id, name, price) VALUES ('b805d393-f7f7-4812-ba91-286f31a70248', 'Guarda Roupa Casal Hera 8 Portas', 1079.90);
INSERT INTO product (id, name, price) VALUES ('4350dcf2-acbe-4297-bf32-ccc306b8ea0a', 'Panela de Pressão Clock 4,5L', 106.60);
INSERT INTO product (id, name, price) VALUES ('e0b7bdbd-834e-4c66-adea-14e57a2a9f9d', 'Apple iPhone 13 128GB Estelar', 4099.00);
INSERT INTO product (id, name, price) VALUES ('c2a45579-4f42-4568-aff4-d48474c68787', 'Ar-condicionado Split GREE', 1985.49);
INSERT INTO product (id, name, price) VALUES ('c28edcb6-c84f-4494-8140-69bd387e6767', 'Lavadora de Alta Pressão Electrolux', 436.91);
INSERT INTO product (id, name, price) VALUES ('c29eac85-2de7-4ad3-a8aa-5a06333ac1b1', 'Churrasqueira Elétrica Mondial 1800W', 169.74);