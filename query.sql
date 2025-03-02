-- CREATE TABLE admin_table(
--     admin_id INTEGER PRIMARY KEY NOT NULL,
--     admin_name TEXT NOT NULL,
--     admin_emailid TEXT NOT NULL,
--     admin_password TEXT NOT NULL,
--     admin_contactno TEXT DEFAULT NULL
-- );

-- INSERT INTO admin_table (admin_id, admin_name, admin_emailid, admin_password, admin_contactno) VALUES
-- (1, 'manish123', 'manish123@gmail.com', 'manish@123', '7101846738'),
-- (2, 'swagat123', 'swagat123@gmail.com', 'swagat@123', '1765559121'),
-- (3, 'sneha123', 'sneha123@gmail.com', 'sneha@123', '3192803006'),
-- (4, 'shravani123', 'shravani123@gmail.com', 'shravani@123', '1186542027');


-- CREATE TABLE owner_table (
--     owner_id INTEGER PRIMARY KEY NOT NULL,
--     owner_name TEXT NOT NULL,
--     owner_emailid TEXT NOT NULL,
--     owner_password TEXT NOT NULL,
--     owner_contactno TEXT NOT NULL,
--     owner_address TEXT DEFAULT NULL
-- );

-- INSERT INTO owner_table (owner_id, owner_name, owner_emailid, owner_password, owner_contactno, owner_address) VALUES
-- (1, 'Hand Group', 'lbayldon13@google.es', 'pY1yR/+ike.Vnj#s', '3167824174', 'Room 1107'),
-- (2, 'Haag, Greenholt and Hickle', 'swestgate0@state.gov', 'uK6qRCd4qW', '6625843168', 'Room 645'),
-- (3, 'Bartoletti, Nikolaus and Wuckert', 'esisnett1@ezinearticles.com', 'oS02Iq/_zRhb@0', '4109772864', 'Apt 553'),
-- (4, 'Brakus Group', 'cspikings2@army.mil', 'hG5433_}F0|nFQF', '3794461726', 'Apt 728'),
-- (5, 'Gottlieb, Ondricka and Waelchi', 'vmelsome3@nbcnews.com', 'dV0O5l/\lEU', '2792382025', '11th Floor'),
-- (6, 'Schmitt-Swift', 'fgirardy4@simplemachines.org', 'mU1kc._L/w', '7017666525', 'PO Box 68701'),
-- (7, 'Hayes, Rippin and Bednar', 'mwainer5@hp.com', 'bH4BhXe1', '3098787879', 'Apt 127'),
-- (8, 'Rodriguez-Ledner', 'lmorse6@usgs.gov', 'gW5c?MKM}N@X,>', '7495262882', 'PO Box 3668'),
-- (9, 'Rempel-Willms', 'probertucci7@miitbeian.gov.cn', 'zF44UK$!e', '6204883648', '16th Floor'),
-- (10, 'Hammes, Predovic and Auer', 'jgosney8@booking.com', 'oV7r9\+c_!QH', '7752973927', 'PO Box 55725');


-- CREATE TABLE banner_table(
--     banner_id INTEGER PRIMARY KEY NOT NULL,
--     owner_id INTEGER DEFAULT NULL,
--     banner_image TEXT NOT NULL,
--     banner_area TEXT DEFAULT NULL,
--     banner_price NUMERIC(10,2) NOT NULL,
--     FOREIGN KEY (owner_id) REFERENCES owner_table(owner_id)
-- );

-- INSERT INTO banner_table (banner_id, owner_id, banner_image, banner_area, banner_price) VALUES
-- (1, 10, './img/B1.jpeg', '500', 4658.03),
-- (2, 2, './img/B2.jpeg', '725', 4351.65),
-- (3, 10, './img/B3.jpeg', '725', 2409.63),
-- (4, 10, './img/B4.jpeg', '910', 3303.10),
-- (5, 1, './img/B5.jpeg', '650', 3607.85),
-- (6, 5, './img/B6.jpeg', '910', 3978.19),
-- (7, 10, './img/B7.jpeg', '1000', 3547.03),
-- (8, 3, './img/B8.jpeg', '725', 3467.50),
-- (9, 5, './img/B9.jpeg', '890', 2434.11),
-- (10, 3, './img/B10.jpeg', '890', 4606.41),
-- (11, 2, './img/B11.jpeg', '1000', 3901.34),
-- (12, 1, './img/B12.jpeg', '910', 3791.57),
-- (13, 9, './img/B13.jpeg', '650', 3058.77),
-- (14, 2, './img/B14.jpeg', '970', 581.54),
-- (15, 1, './img/B15.jpeg', '545', 4096.11),
-- (16, 2, './img/B16.jpeg', '890', 2574.39),
-- (17, 6, './img/B17.jpeg', '650', 2941.00),
-- (18, 2, './img/B18.jpeg', '725', 2229.24),
-- (19, 5, './img/B19.jpeg', '725', 3679.63),
-- (20, 3, './img/B20.jpeg', '500', 2939.10);

-- CREATE TABLE sales_table (
--     sales_id INTEGER PRIMARY KEY,
--     owner_id INTEGER DEFAULT NULL,
--     banner_id INTEGER DEFAULT NULL,
--     banner_price NUMERIC(10,2) DEFAULT NULL,
--     FOREIGN KEY (owner_id) REFERENCES owner_table(owner_id),
--     FOREIGN KEY (banner_id) REFERENCES banner_table(banner_id),
--     FOREIGN KEY (banner_price) REFERENCES banner_table(banner_price)
-- );

-- INSERT INTO sales_table (sales_id, owner_id, banner_id, banner_price) VALUES
-- (1, 2, 2, 4351.65),
-- (2, 7, 10, 3547.50),
-- (3, 10, 3, 4606.41),
-- (4, 4, 10, 3303.10),
-- (5, 19, 5, 3679.63);