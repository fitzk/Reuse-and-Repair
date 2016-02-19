# Cateogry table
INSERT INTO Category (category_name) VALUES ('Reuse'), ('Repair');

# Subcategory table
INSERT INTO Subcategory (subcategory_name) VALUES ('Appliances, Large'), ('Appliances, Small'), ('Art Supplies'), ('Bedding/Bath'), ('Bikes/Exercise/Sporting/Camping'), ('Books'), ('Brown Paper/Large Shopping Bags'), ('Building Materials/Home Improvement'), ('CDs, DVDs, LPs, Video Games, etc'), ('Cell Phones'), ('Children’s Goods/Clothing'), ('Clothing/Accessories'), ('Computer Paper'), ('Computers/Monitors'), ('Egg Cartons'), ('Eyeglasses'), ('Fabric'), ('Firewood'), ('Food (unopened, pre-expired)'), ('Food (surplus garden produce)'), ('Food Containers (clean glass/plastic w/lids)'), ('Furniture'), ('Garden/Farm/Landscaping'), ('Garden Pots'), ('Home Electronics'), ('Household Goods'), ('Medical Equipment/Supplies'), ('Office Equipment'), ('Office Supplies'), ('Packing Materials'), ('Pet Supplies/Food'), ('Printer Cartridge Refilling'), ('School Supplies'), ('Toiletries'), ('Vehicles/Parts'), ('Lawn Equipment'), ('Reel Mowers'), ('Sandals'), ('Screen Repair'), ('Shoes, Boots'), ('Upholstery, Furniture');



# REUSE DIRECTORY
#Albany-Corvallis ReUseIt (free items:  groups.yahoo.com)
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Albany-Corvallis ReUseIt (free items:  groups.yahoo.com)', NULL, NULL, NULL, NULL, 'https://groups.yahoo.com/neo/groups/albanycorvallisReUseIt/info');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Large');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Egg Cartons');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Eyeglasses');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Firewood');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food Containers (clean glass/plastic w/lids)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Packing Materials');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');

#Arc Thrift Store
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('928', 'NW Beca Ave', 'Corvallis', 'OR', '97330', '44.5779770:-123.2615670');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-5:30PM, Tue 10AM-5:30PM, Wed 10AM-5:30PM, Thu 10AM-5:30PM, Fri 10AM-5:30PM, Sat 10AM-5:30PM, Sun 12PM-5:30PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Arc Thrift Store', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-9011', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.arcbenton.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Printer Cartridge Refilling');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');

#Arc Thrift Store philomath
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('936', 'Main St', 'Philomath', 'OR', '97370', '44.5398990:-123.3727890');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-5:30PM, Tue 10AM-5:30PM, Wed 10AM-5:30PM, Thu 10AM-5:30PM, Fri 10AM-5:30PM, Sat 10AM-5:30PM, Sun 12PM-5:30PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Arc Thrift Store', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 929-3946', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.arcbenton.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Printer Cartridge Refilling');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Vehicles/Parts');

#Beekman Place Antique Mall 
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('601', 'SW Western Blvd', 'Corvallis', 'OR', '97330', '44.5602590:-123.2666830');
INSERT INTO Hours (hours_entry) VALUES ('Mon Closed, Tue 11AM-5PM, Wed 11AM-5PM, Thu 11AM-5PM, Fri 11AM-5PM, Sat 11AM-5PM, Sun 12PM-5PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Beekman Place Antique Mall', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-8250', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'https://www.antiquemalls.com/or/corvallis/97333/16882');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');

#Benton County Extension / 4-H  Activities
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1849', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5859090:-123.2565050');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Benton County Extension/4-H  Activities', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 766-6750', NULL, NULL, 'http://extension.oregonstate.edu/benton/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');

#Benton County Master Gardeners
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1849', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5859090:-123.2565050');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Benton County Master Gardeners', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 766-6750', NULL, NULL, 'http://extension.oregonstate.edu/benton/horticulture/mg');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');

#Book Bin
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('215', 'SW 4th St', 'Corvallis', 'OR', '97333', '44.5632720:-123.2624060');
INSERT INTO Hours (hours_entry) VALUES ('Mon 8:30AM-9PM, Tue 8:30AM-9PM, Wed 8:30AM-9PM, Thu 8:30AM-9PM, Fri 8:30AM-9PM, Sat 8:30AM-9PM, Sun 9AM-7PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Book Bin', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 752-0040', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://bookbin.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');

#Browser's Bookstore
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('121', 'NW 4th St', 'Corvallis', 'OR', '97330', '44.5649870:-123.2614510');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9:30AM–6PM, Tue 9:30AM–6PM, Wed 9:30AM–6PM, Thu 9:30AM–6PM, Fri 9:30AM–6PM, Sat 9:30AM–6PM, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', "Browser's Bookstore", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(888) 758-1121', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.browsersbookstore.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');

#Boys & Girls Club / STARS (after school programs)
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1112', 'NW Circle Blvd', 'Corvallis', 'OR', '97330', '44.5887140:-123.2639010');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Boys & Girls Club/STARS (after school programs)', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-1909', NULL, NULL, 'http://www.bgccorvallis.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Egg Cartons');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Buckingham Palace
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('600', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5593320:-123.2638190');
INSERT INTO Hours (hours_entry) VALUES ('Mon Closed, Tue Closed, Wed Closed, Thu Closed, Fri Open, Sat Closed, Sun Open');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Buckingham Palace', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 752-7980', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), NULL);

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#CARDV (Center Against Rape/Domestic Violence)
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('4786', 'SW Philomath Blvd', 'Corvallis', 'OR', '97333', '44.5528650:-123.3049680');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9AM–5PM, Tue 9AM–5PM, Wed 9AM–5PM, Thu 9AM–5PM, Fri 9AM–5PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'CARDV (Center Against Rape/Domestic Violence)', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 758-0219', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://cardv.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Firewood');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');

#Career Closet for Women
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('942', 'NW 9th St, Ste.A', 'Corvallis', 'OR', '97330', '44.5743780:-123.2632970');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Career Closet for Women', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-6979', NULL, NULL, 'https://sicorvallis.wordpress.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');

#Cat's Meow Humane Society Thrift Shop
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('411', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5610050:-123.2622430');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-5PM, Tue 10AM-5PM, Wed 10AM-5PM, Thu 10AM-5PM, Fri 10AM-5PM, Sat 10AM-5PM, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', "Cat's Meow Humane Society Thrift Shop", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-0573', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.heartlandhumane.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Brown Paper/Large Shopping Bags');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Eyeglasses');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Fabric');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Household Goods');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Children's Farm Home
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('4455', 'NE Hwy 20', 'Corvallis', 'OR', '97330', '44.6084370:-123.2144370');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', "Children's Farm Home", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-1852', NULL, NULL, 'http://www.trilliumfamily.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'CDs, DVDs, LPs, Video Games, etc');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Children’s Goods/Clothing');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Home Electronics');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Chintimini Wildlife Rehabilitation Ctr
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('311', 'NW Lewisburg Ave', 'Corvallis', 'OR', '97330', '44.6290230:-123.2471050');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Chintimini Wildlife Rehabilitation Center', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 745-5324', NULL, NULL, 'http://www.chintiminiwildlife.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Building Materials/Home Improvement');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden/Farm/Landscaping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Pet Supplies/Food');

#Community Outreach (homeless shelter)
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('865', 'NW Reiman Ave', 'Corvallis', 'OR', '97330', '44.5732410:-123.2622370');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Community Outreach (homeless shelter)', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 758-3000', NULL, NULL, 'http://www.communityoutreachinc.org/services/emergency-shelter-program/family-shelter/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bedding/Bath');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (unopened, pre-expired)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Food (surplus garden produce)');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Toiletries');

#Corvallis Environmental Center
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('214', 'SW Monroe Ave', 'Corvallis', 'OR', '97333', '44.5642370:-123.2604800');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9AM-5PM, Tue 9AM-5PM, Wed 9AM-5PM, Thu 9AM-5PM, Fri 9AM-5PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Corvallis Environmental Center', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-9211', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.corvallisenvironmentalcenter.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Art Supplies');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computer Paper');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Garden Pots');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Office Equipment');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'School Supplies');

#Corvallis Bicycle Collective
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('33900', 'SE Roche Ln Unit B', 'Corvallis', 'OR', '97333', '44.5634720:-123.2511560');
INSERT INTO Hours (hours_entry) VALUES ('Mon Closed, Tue 12PM-4PM, Wed 12PM-4PM, Thu 12PM-4PM, Fri 12PM-4PM, Sat 12PM-4PM, Sun 12PM-4PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Corvallis Bicycle Collective', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 224-6885', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://corvallisbikes.org/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');

#Corvallis Furniture
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1810', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5474760:-123.2656600');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-3PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat 10AM-3PM, Sun 10AM-3PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Corvallis Furniture', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 286-4658', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://corvallisfurniture.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Bikes/Exercise/Sporting/Camping');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#Corvallis-Uzhhorod Sister Cities/The TOUCH Project
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Reuse', 'Corvallis-Uzhhorod Sister Cities/The TOUCH Project', NULL, '(541) 753-5170', NULL, NULL, 'http://www.sistercities.corvallis.or.us/uzhhorod');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Medical Equipment/Supplies');



# REPAIR DIRECTORY
#B & J Bookbinding
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('108', 'SW 3rd St', 'Corvallis', 'OR', '97333', '44.5642060:-123.2613380');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9AM-5PM, Tue 9AM-5PM, Wed 9AM-5PM, 9AM-5PM, Fri 9AM-5PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'B & J Bookbinding', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-9861', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.cornerstoneassociates.com/bj-bookbinding-about-us.html');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Books');

#Cell Phone Sick Bay
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('252', 'SW Madison Ave #110', 'Corvallis', 'OR', '97333', '44.5632190:-123.2608650');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-6PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat 11AM-4PM, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Cell Phone Sick Bay', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 230-1785', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.cellsickbay.com/index.html');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');

#Geeks 'N' Nerds
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('950', 'SE Geary St', 'Corvallis', 'OR', '97322', '44.6326580:-123.0839750');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-5PM, Tue 10AM-5PM, Wed 10AM-5PM, Thu 10AM-5PM, Fri 10AM-5PM, Sat 10AM-2PM, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', "Geeks 'N' Nerds", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-0018', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.computergeeksnnerds.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Cell Phones');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');

#Specialty Sewing By Leslie
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('225', 'SW Madison Ave # 201', 'Corvallis', 'OR', '97333', '44.5633470:-123.2607020');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Specialty Sewing By Leslie', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 758-4556', NULL, NULL, 'http://www.specialtysewing.com/Leslie_Seamstress/Welcome.html');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');

#Covallis Technical
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('964', 'NW Circle Blvd', 'Corvallis', 'OR', '97330', '44.5887300:-123.2576870');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9AM–5PM, Tue 9AM–5PM, Wed 9AM–5PM, Thu 9AM–5PM, Fri 9AM–5PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Covallis Technical', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 704-7009', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.corvallistechnical.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');

#Bellevue Computers
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1865', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5861660:-123.2550850');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9AM-6PM, Tue 9AM-6PM, Wed 9AM-6PM, Thu 9AM-6PM, Fri 9AM-6PM, Sat 10AM-5PM, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Bellevue Computers', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-3487', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.bellevuepc.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Clothing/Accessories');

#OSU Repair Fair
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('644', 'SW 13th St', 'Corvallis', 'OR', '97333', '44.5613780:-123.2726020');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'OSU Repair Fair', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 737-5398', NULL, NULL, 'http://fa.oregonstate.edu/surplus');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Appliances, Small');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Computers/Monitors');

#P.K Furniture Repair & Refinishing 
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('5270', 'Corvallis-Newport Hwy', 'Corvallis', 'OR', '97333', '44.5507110:-123.3124530');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-6PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'P.K Furniture Repair & Refinishing', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 230-1727', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.pkfurniturerefinishing.net/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#Furniture Restoration Center
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('1321', 'Main St', 'Philomath', 'OR', '97370', '44.5400870:-123.3671230');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9AM-5PM, Tue 9AM-5PM, Wed 9AM-5PM, Thu 9AM-5PM, Fri 11AM-3PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Furniture Restoration Center', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 929-6681', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://restorationsupplies.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Furniture');

#Corvallis Power Equipment
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('713', 'NE Circle Blvd', 'Corvallis', 'OR', '97330', '44.5892660:-123.2502330');
INSERT INTO Hours (hours_entry) VALUES ('Mon 8AM-5PM, Tue 8AM-5PM, Wed 8AM-5PM, Thu 8AM-5PM, Fri 8AM-5PM, Sat 8:30AM-12PM, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Corvallis Power Equipment', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-8075', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'https://corvallispowerequipment.stihldealer.net/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Lawn Equipment');

#Robnett's Hardware
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('400', 'SW 2nd St', 'Corvallis', 'OR', '97333', '44.5610110:-123.2617870');
INSERT INTO Hours (hours_entry) VALUES ('Mon 7:30AM-6PM, Tue 7:30AM-6PM, Wed 7:30AM-6PM, Thu 7:30AM-6PM, Fri 7:30AM-6PM, Sat 8:30AM-5:30PM, Sun 10AM-4PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', "Robnett's Hardware", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 753-5531', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://ww3.truevalue.com/robnetts/Home.aspx');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Reel Mowers');
INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Screen Repair');

#Footwise 
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('301', 'SW Madison Ave #100', 'Corvallis', 'OR', '97333', '44.5636530:-123.2615680');
INSERT INTO Hours (hours_entry) VALUES ('Mon 10AM-6PM, Tue 10AM-6PM, Wed 10AM-6PM, Thu 10AM-6PM, Fri 10AM-6PM, Sat 10AM-6PM, Sun 11AM-5PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Footwise', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 757-0875', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://footwise.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Sandals');

#Sedlak's Boots and Shoes
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('225', 'SW 2nd St', 'Corvallis', 'OR', '97333', '44.5633130:-123.2605900');
INSERT INTO Hours (hours_entry) VALUES ('Mon 9:30AM-6PM, Tue 9:30AM-6PM, Wed 9:30AM-6PM, Thu 9:30AM-6PM, Fri 9:30AM-6PM, Sat 9:30AM-5PM, Sun 12PM-4PM');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', "Sedlak's Boots and Shoes", (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 752-1498', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.sedlaksshoes.net/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Shoes, Boots');

#Foam Man
INSERT INTO Address (street_number, street_name, city, state, zip, geolocation) VALUES ('2511', 'NW 9th St', 'Corvallis', 'OR', '97330', '44.5932530:-123.2517410');
INSERT INTO Hours (hours_entry) VALUES ('Mon Closed, Tue 11AM-5PM, Wed 11AM-5PM, Thu 11AM-5PM, Fri 11AM-5PM, Sat Closed, Sun Closed');
INSERT INTO Business (category_name, name, address_id, phone, description, hours_id, website) VALUES ('Repair', 'Foam Man', (SELECT address_id FROM Address ORDER BY address_id DESC LIMIT 1), '(541) 754-9378', NULL, (SELECT hours_id FROM Hours ORDER BY hours_id DESC LIMIT 1), 'http://www.thefoammancorvallis.com/');

INSERT INTO Business_Subcategory (business_id, subcategory_name) VALUES ((SELECT business_id FROM Business ORDER BY business_id DESC LIMIT 1), 'Upholstery, Furniture');

