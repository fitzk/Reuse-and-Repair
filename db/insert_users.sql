INSERT INTO Role (role_name) VALUES ('Master admin'), ('Content management admin'), ('Business admin'), ('Read-only admin');

INSERT INTO Admin (username, password, first_name, last_name, fk_role_id) VALUES ('briantiegs', 'password', 'Brian', 'Tiegs', 1);
INSERT INTO Admin (username, password, first_name, last_name, fk_role_id) VALUES ('philiptan', 'password', 'Philip', 'Tan', 1);
INSERT INTO Admin (username, password, first_name, last_name, fk_role_id) VALUES ('kaylafitzsimmons', 'password', 'Kayla', 'Fitzsimmons', 1);
