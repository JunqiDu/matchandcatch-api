INSERT INTO sellers (name, email, password)
VALUES 
('WoYong', 'woyong@lhl.com', '1'),
('Joseph', 'joseph@lhl.com', '2'),
('Mingun', 'mingun@lhl.com', '3'),
('Francis','francis@lhl.com', '4'),
('Kate', 'kate@lhl.com', '5'),
('Jonathan', 'johnathan@lhl.com', '6'),
('Melisa', 'melisa@lhl.com', '7'),
('Craig', 'craig@lhl.com', '8');

INSERT INTO vehicles (seller_id, Maker, Model, Year, Milage)
VALUES
(1, 'BMW', 'X3', 2020, 120000),
(2, 'Audi', 'Q7', 2019, 140000),
(3, 'Hyundai', 'Genesis', 2021, 150000),
(1, 'Honda', 'Civi', 2022, 160000),
(2, 'Honda', 'Civi', 2022, 160000),
(4, 'Honda', 'Civi', 2022, 160000),
(5, 'Honda', 'Civi', 2022, 160000),
(6, 'Honda', 'Civi', 2022, 160000),
(7, 'Honda', 'Civi', 2022, 160000),
(2, 'Honda', 'Civi', 2022, 160000);

INSERT INTO vehicles (seller_id, Maker, Model, Year, Milage, Sell_Status, Approve_Status)
VALUES
(4, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(5, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(6, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(4, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(5, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(6, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(7, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(2, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(6, 'BMW', 'X3', 2020, 120000, TRUE, TRUE),
(4, 'BMW', 'X3', 2020, 120000, TRUE, TRUE);

INSERT INTO dealers (name, email, password)
VALUES
('Sam', 'sam@sam.com','sam'),
('Ryan', 'ryan@ryan.com','ryan'),
('Harry', 'harry@harry.com', 'harry'),
('Ron', 'ron@ron.com', 'ron');

INSERT INTO images (vehicle_id, source)
VALUES
(1,'https://cdn.luxe.digital/media/20230105073805/fastest-cars-world-2023-list-ranking-luxe-digital-1200x600.jpg'),
(2,'https://carwow-uk-wp-3.imgix.net/18015-MC20BluInfinito-scaled-e1666008987698.jpg'),
(3,'https://carwow-uk-wp-1.imgix.net/McLaren-720S-1.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(4,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(5,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(6,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(7,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(8,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(9,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(10,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(11,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(12,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(13,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(14,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(15,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(16,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(17,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(18,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(19,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920'),
(20,'https://carwow-uk-wp-3.imgix.net/Audi-R8-5.jpg?auto=format&cs=tinysrgb&fit=clip&ixlib=rb-1.1.0&q=60&w=1920');

INSERT INTO auctions (vehicle_id, dealer_id, price)
VALUES
(1, 1, 30000),
(1, 2, 28000),
(1, 3, 29000),
(2, 1, 110000),
(2, 2, 95000),
(2, 3, 100000);

INSERT INTO auctions (dealer_id, vehicle_id, price, selected)
VALUES
(1,11, 30000, true),
(2,12, 12345, true),
(1,13, 54311, true),
(3,14, 98231, true),
(4,15, 30000, true),
(4,16, 12345, true),
(3,17, 52341, true),
(1,18, 99999, true),
(2,19, 77777, true),
(1,20, 22222, true);

INSERT INTO currentuser(id)
VALUES
(0)

