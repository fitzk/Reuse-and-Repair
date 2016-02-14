USE reuse_and_repair_db;
# Cateogry table
INSERT IGNORE INTO Category (category_id, category_name) VALUES ('Reuse','Reuse'), ('Repair','Repair');

# Subcategory table
INSERT IGNORE INTO Subcategory (subcategory_id,subcategory_name) VALUES ('Appliances, Large','Appliances, Large'), ('Appliances, Small','Appliances, Small'), ('Art Supplies','Art Supplies'), ('Bedding/Bath','Bedding/Bath'), ('Bikes/Exercise/Sporting/Camping','Bikes/Exercise/Sporting/Camping'), ('Books','Books'), ('Brown Paper/Large Shopping Bags','Brown Paper/Large Shopping Bags'), ('Building Materials/Home Improvement','Building Materials/Home Improvement'), ('CDs, DVDs, LPs, Video Games, etc','CDs, DVDs, LPs, Video Games, etc'), ('Cell Phones','Cell Phones'), ('Children’s Goods/Clothing','Children’s Goods/Clothing'), ('Clothing/Accessories','Clothing/Accessories'), ('Computer Paper','Computer Paper'), ('Computers/Monitors','Computers/Monitors'), ('Egg Cartons','Egg Cartons'), ('Eyeglasses','Eyeglasses'), ('Fabric','Fabric'), ('Firewood','Firewood'), ('Food (unopened, pre-expired)','Food (unopened, pre-expired)'), ('Food (surplus garden produce)','Food (surplus garden produce)'), ('Food Containers (clean glass/plastic w/lids)','Food Containers (clean glass/plastic w/lids)'), ('Furniture','Furniture'), ('Garden/Farm/Landscaping','Garden/Farm/Landscaping'), ('Garden Pots','Garden Pots'), ('Home Electronics','Home Electronics'), ('Household Goods','Household Goods'), ('Medical Equipment/Supplies','Medical Equipment/Supplies'), ('Office Equipment','Office Equipment'), ('Office Supplies','Office Supplies'), ('Packing Materials','Packing Materials'), ('Pet Supplies/Food','Pet Supplies/Food'), ('Printer Cartridge Refilling','Printer Cartridge Refilling'), ('School Supplies','School Supplies'), ('Toiletries','Toiletries'), ('Vehicles/Parts','Vehicles/Parts'), ('Lawn Equipment','Lawn Equipment'), ('Reel Mowers','Reel Mowers'), ('Sandals','Sandals'), ('Screen Repair','Screen Repair'), ('Shoes, Boots','Shoes, Boots'), ('Upholstery, Furniture','Upholstery, Furniture');

INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse','Appliances, Large');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse','Appliances, Small');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Art Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Bedding/Bath');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Books');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Brown Paper/Large Shopping Bags');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Building Materials/Home Improvement');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Cell Phones');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Children’s Goods/Clothing');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Clothing/Accessories');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Computer Paper');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Computers/Monitors');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Egg Cartons');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Eyeglasses');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Fabric');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Firewood');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Food (unopened, pre-expired)');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Food (surplus garden produce)');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Food Containers (clean glass/plastic w/lids)');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Furniture');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Garden/Farm/Landscaping');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Garden Pots');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Home Electronics');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Household Goods');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Medical Equipment/Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Office Equipment');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Office Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Packing Materials');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Pet Supplies/Food');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Printer Cartridge Refilling');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'School Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Toiletries');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Vehicles/Parts');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Lawn Equipment');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Reel Mowers');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Sandals');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Screen Repair');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Shoes, Boots');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Reuse', 'Upholstery, Furniture');

INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Appliances, Large');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Appliances, Small');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Art Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Bedding/Bath');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Books');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Brown Paper/Large Shopping Bags');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Building Materials/Home Improvement');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Cell Phones');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Children’s Goods/Clothing');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Clothing/Accessories');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Computer Paper');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Computers/Monitors');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Egg Cartons');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Eyeglasses');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Fabric');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Firewood');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Food (unopened, pre-expired)');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Food (surplus garden produce)');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Food Containers (clean glass/plastic w/lids)');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Furniture');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Garden/Farm/Landscaping');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Garden Pots');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Home Electronics');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Household Goods');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Medical Equipment/Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Office Equipment');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Office Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Packing Materials');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Pet Supplies/Food');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Printer Cartridge Refilling');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'School Supplies');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Toiletries');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Vehicles/Parts');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Lawn Equipment');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Reel Mowers');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Sandals');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Screen Repair');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Shoes, Boots');
INSERT INTO Category_Subcategory (fk_category_id, fk_subcategory_id) VALUES ('Repair', 'Upholstery, Furniture');



# REUSE DIRECTORY
#Albany-Corvallis ReUseIt (free items:  groups.yahoo.com)
INSERT INTO Business(business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Albany-Corvallis ReUseIt (free items:  groups.yahoo.com)', NULL, NULL, NULL, NULL, 'https://groups.yahoo.com/neo/groups/albanycorvallisReUseIt/info');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Large');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Egg Cartons');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Eyeglasses');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Firewood');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food Containers (clean glass/plastic w/lids)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Packing Materials');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');


#Arc Thrift Store
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('928', 'NW Beca Ave', 'Corvallis', 'OR', '97330', '44.5779770:-123.2615670');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-5:30PM, Tue 10AM-5:30PM, Wed 10AM-5:30PM, Thu 10AM-5:30PM, Fri 10AM-5:30PM, Sat 10AM-5:30PM, Sun 12PM-5:30PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Arc Thrift Store', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-9011', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.arcbenton.org/');


INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Printer Cartridge Refilling');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');




#Arc Thrift Store philomath
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('936', 'Main St', 'Philomath', 'OR', '97370', '44.5398990:-123.3727890');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-5:30PM, Tue 10AM-5:30PM, Wed 10AM-5:30PM, Thu 10AM-5:30PM, Fri 10AM-5:30PM, Sat 10AM-5:30PM, Sun 12PM-5:30PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Arc Thrift Store', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 929-3946', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.arcbenton.org/');
# INSERT IGNORE INTO Business_Subcategory
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Printer Cartridge Refilling');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');


#Beekman Place Antique Mall 
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('601', 'SW Western Blvd', 'Corvallis', 'OR', '97330', '44.5602590:-123.2666830');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon Closed, Tue 11AM-5PM, Wed 11AM-5PM, Thu 11AM-5PM, Fri 11AM-5PM, Sat 11AM-5PM, Sun 12PM-5PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Beekman Place Antique Mall', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-8250', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'https://www.antiquemalls.com/or/corvallis/97333/16882');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');

#Benton County Extension / 4-H  Activities
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1849', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5859090:-123.2565050');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Benton County Extension/4-H  Activities', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 766-6750', NULL, NULL, 'http://extension.oregonstate.edu/benton/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');



#Benton County Master Gardeners
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1849', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5859090:-123.2565050');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Benton County Master Gardeners', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 766-6750', NULL, NULL, 'http://extension.oregonstate.edu/benton/horticulture/mg');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');

#Book Bin
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('215', 'SW 4th St', 'Corvallis', 'OR', '97333', '44.5632720:-123.2624060');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 8:30AM-9PM, Tue 8:30AM-9PM, Wed 8:30AM-9PM, Thu 8:30AM-9PM, Fri 8:30AM-9PM, Sat 8:30AM-9PM, Sun 9AM-7PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Book Bin', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 752-0040', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://bookbin.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');

#Browser's Bookstore
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('121', 'NW 4th St', 'Corvallis', 'OR', '97330', '44.5649870:-123.2614510');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9:30AM–6PM, Tue 9:30AM–6PM, Wed 9:30AM–6PM, Thu 9:30AM–6PM, Fri 9:30AM–6PM, Sat 9:30AM–6PM, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ("Browser's Bookstore", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(888) 758-1121', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.browsersbookstore.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');

#Boys & Girls Club / STARS (after school programs)
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1112', 'NW Circle Blvd', 'Corvallis', 'OR', '97330', '44.5887140:-123.2639010');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Boys & Girls Club/STARS (after school programs)', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-1909', NULL, NULL, 'http://www.bgccorvallis.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Egg Cartons');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Buckingham Palace
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('600', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5593320:-123.2638190');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon Closed, Tue Closed, Wed Closed, Thu Closed, Fri Open, Sat Closed, Sun Open');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Buckingham Palace', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 752-7980', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), NULL);

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#CARDV (Center Against Rape/Domestic Violence)
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('4786', 'SW Philomath Blvd', 'Corvallis', 'OR', '97333', '44.5528650:-123.3049680');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9AM–5PM, Tue 9AM–5PM, Wed 9AM–5PM, Thu 9AM–5PM, Fri 9AM–5PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('CARDV (Center Against Rape/Domestic Violence)', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 758-0219', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://cardv.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Firewood');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');

#Career Closet for Women
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('942', 'NW 9th St, Ste.A', 'Corvallis', 'OR', '97330', '44.5743780:-123.2632970');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Career Closet for Women', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-6979', NULL, NULL, 'https://sicorvallis.wordpress.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');

#Cat's Meow Humane Society Thrift Shop
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('411', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5610050:-123.2622430');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-5PM, Tue 10AM-5PM, Wed 10AM-5PM, Thu 10AM-5PM, Fri 10AM-5PM, Sat 10AM-5PM, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ("Cat's Meow Humane Society Thrift Shop", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-0573', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.heartlandhumane.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Eyeglasses');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Children's Farm Home
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('4455', 'NE Hwy 20', 'Corvallis', 'OR', '97330', '44.6084370:-123.2144370');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ("Children's Farm Home", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-1852', NULL, NULL, 'http://www.trilliumfamily.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Chintimini Wildlife Rehabilitation Ctr
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('311', 'NW Lewisburg Ave', 'Corvallis', 'OR', '97330', '44.6290230:-123.2471050');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Chintimini Wildlife Rehabilitation Center', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 745-5324', NULL, NULL, 'http://www.chintiminiwildlife.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');

#Community Outreach (homeless shelter)
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('865', 'NW Reiman Ave', 'Corvallis', 'OR', '97330', '44.5732410:-123.2622370');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Community Outreach (homeless shelter)', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 758-3000', NULL, NULL, 'http://www.communityoutreachinc.org/services/emergency-shelter-program/family-shelter/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Corvallis Environmental Center
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('214', 'SW Monroe Ave', 'Corvallis', 'OR', '97333', '44.5642370:-123.2604800');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9AM-5PM, Tue 9AM-5PM, Wed 9AM-5PM, Thu 9AM-5PM, Fri 9AM-5PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Corvallis Environmental Center', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-9211', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.corvallisenvironmentalcenter.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');

#Corvallis Bicycle Collective
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('33900', 'SE Roche Ln Unit B', 'Corvallis', 'OR', '97333', '44.5634720:-123.2511560');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon Closed, Tue 12PM-4PM, Wed 12PM-4PM, Thu 12PM-4PM, Fri 12PM-4PM, Sat 12PM-4PM, Sun 12PM-4PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Corvallis Bicycle Collective', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 224-6885', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://corvallisbikes.org/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');

#Corvallis Furniture
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1810', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5474760:-123.2656600');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-3PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat 10AM-3PM, Sun 10AM-3PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Corvallis Furniture', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 286-4658', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://corvallisfurniture.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#Corvallis-Uzhhorod Sister Cities/The TOUCH Project
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Corvallis-Uzhhorod Sister Cities/The TOUCH Project', NULL, '(541) 753-5170', NULL, NULL, 'http://www.sistercities.corvallis.or.us/uzhhorod');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');



# REPAIR DIRECTORY
#B & J Bookbinding
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('108', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5642060:-123.2613380');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9AM-5PM, Tue 9AM-5PM, Wed 9AM-5PM, 9AM-5PM, Fri 9AM-5PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('B & J Bookbinding', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-9861', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.cornerstoneassociates.com/bj-bookbinding-about-us.html');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');

#Cell Phone Sick Bay
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('252', 'SW Madison Ave #110', 'Corvallis', 'OR', '97333', '44.5632190:-123.2608650');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-6PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat 11AM-4PM, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Cell Phone Sick Bay', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 230-1785', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.cellsickbay.com/index.html');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');

#Geeks 'N' Nerds
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('950', 'SE Geary St', 'Corvallis', 'OR', '97322', '44.6326580:-123.0839750');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-5PM, Tue 10AM-5PM, Wed 10AM-5PM, Thu 10AM-5PM, Fri 10AM-5PM, Sat 10AM-2PM, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ("Geeks 'N' Nerds", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-0018', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.computergeeksnnerds.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');

#Specialty Sewing By Leslie
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('225', 'SW Madison Ave # 201', 'Corvallis', 'OR', '97333', '44.5633470:-123.2607020');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Specialty Sewing By Leslie', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 758-4556', NULL, NULL, 'http://www.specialtysewing.com/Leslie_Seamstress/Welcome.html');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');

#Covallis Technical
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('964', 'NW Circle Blvd', 'Corvallis', 'OR', '97330', '44.5887300:-123.2576870');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9AM–5PM, Tue 9AM–5PM, Wed 9AM–5PM, Thu 9AM–5PM, Fri 9AM–5PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Covallis Technical', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 704-7009', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.corvallistechnical.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');

#Bellevue Computers
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1865', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5861660:-123.2550850');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9AM-6PM, Tue 9AM-6PM, Wed 9AM-6PM, Thu 9AM-6PM, Fri 9AM-6PM, Sat 10AM-5PM, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Bellevue Computers', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-3487', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.bellevuepc.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');

#OSU Repair Fair
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('644', 'SW 13th St', 'Corvallis', 'OR', '97333', '44.5613780:-123.2726020');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('OSU Repair Fair', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 737-5398', NULL, NULL, 'http://fa.oregonstate.edu/surplus');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');

#P.K Furniture Repair & Refinishing 
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('5270', 'Corvallis-Newport Hwy', 'Corvallis', 'OR', '97333', '44.5507110:-123.3124530');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-6PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('P.K Furniture Repair & Refinishing', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 230-1727', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.pkfurniturerefinishing.net/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#Furniture Restoration Center
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1321', 'Main St', 'Philomath', 'OR', '97370', '44.5400870:-123.3671230');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9AM-5PM, Tue 9AM-5PM, Wed 9AM-5PM, Thu 9AM-5PM, Fri 11AM-3PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Furniture Restoration Center', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 929-6681', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://restorationsupplies.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#Corvallis Power Equipment
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('713', 'NE Circle Blvd', 'Corvallis', 'OR', '97330', '44.5892660:-123.2502330');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 8AM-5PM, Tue 8AM-5PM, Wed 8AM-5PM, Thu 8AM-5PM, Fri 8AM-5PM, Sat 8:30AM-12PM, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Corvallis Power Equipment', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-8075', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'https://corvallispowerequipment.stihldealer.net/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Lawn Equipment');

#Robnett's Hardware
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('400', 'SW 2nd St', 'Corvallis', 'OR', '97333', '44.5610110:-123.2617870');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 7:30AM-6PM, Tue 7:30AM-6PM, Wed 7:30AM-6PM, Thu 7:30AM-6PM, Fri 7:30AM-6PM, Sat 8:30AM-5:30PM, Sun 10AM-4PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ("Robnett's Hardware", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-5531', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://ww3.truevalue.com/robnetts/Home.aspx');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Reel Mowers');
INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Screen Repair');

#Footwise 
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('301', 'SW Madison Ave #100', 'Corvallis', 'OR', '97333', '44.5636530:-123.2615680');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-6PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat 10AM-6PM, Sun 11AM-5PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Footwise', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-0875', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://footwise.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Sandals');

#Sedlak's Boots and Shoes
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('225', 'SW 2nd St', 'Corvallis', 'OR', '97333', '44.5633130:-123.2605900');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 9:30AM-6PM, Tue 9:30AM-6PM, Wed 9:30AM-6PM, Thu 9:30AM-6PM, Fri 9:30AM-6PM, Sat 9:30AM-5PM, Sun 12PM-4PM');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ("Sedlak's Boots and Shoes", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 752-1498', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.sedlaksshoes.net/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Shoes, Boots');

#Foam Man
INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('2511', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5932530:-123.2517410');
INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon Closed, Tue 11AM-5PM, Wed 11AM-5PM, Thu 11AM-5PM, Fri 11AM-5PM, Sat Closed, Sun Closed');
INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Foam Man', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-9378', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.thefoammancorvallis.com/');

INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Upholstery, Furniture');



#template
#INSERT IGNORE INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('928', 'NW Beca Ave', 'Corvallis', 'OR', '97330', '44.5779770:-123.2615670');
#INSERT IGNORE INTO Hours (hours_entry) VALUES ('Mon 10AM-5:30PM, Tue 10AM-5:30PM, Wed 10AM-5:30PM, Thu 10AM-5:30PM, Fri 10AM-5:30PM, Sat 10AM-5:30PM, Sun 12PM-5:30PM');
#INSERT IGNORE INTO Business (business_name, fk_address_id, phone, description, fk_hours_id, website) VALUES ('Arc Thrift Store', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-9011', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.arcbenton.org/');

#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Large');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Egg Cartons');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Eyeglasses');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Firewood');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food Containers (clean glass/plastic w/lids)');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Packing Materials');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Printer Cartridge Refilling');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');
#INSERT IGNORE INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Lawn Equipment');
#INSERT INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Reel Mowers');
#INSERT INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Sandals');
#INSERT INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Screen Repair');
#INSERT INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Shoes, Boots');
#INSERT INTO Business_Subcategory (fk_business_id, fk_subcategory_id) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Upholstery, Furniture');
