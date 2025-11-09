CREATE DATABASE OnlineBookstore;

USE OnlineBookstore;

drop database OnlineBookstore;

CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    Published_Year INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT 
);

CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15) NOT NULL,
    City VARCHAR(50),
    Country VARCHAR(150)
);

CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT NOT NULL,
    Total_Amount DECIMAL(10, 2)
);

INSERT INTO Books VALUES (1,'Configurable modular throughput','Joseph Crane','Biography',1949,21.34,100);
INSERT INTO Books VALUES (2,'Persevering reciprocal knowledge user','Mario Moore','Fantasy',1971,35.8,19);
INSERT INTO Books VALUES (3,'Streamlined coherent initiative','Derrick Howard','Non-Fiction',1913,15.75,27);
INSERT INTO Books VALUES (4,'Customizable 24hour product','Christopher Andrews','Fiction',2020,43.52,8);
INSERT INTO Books VALUES (5,'Adaptive 5thgeneration encoding','Juan Miller','Fantasy',1956,10.95,16);
INSERT INTO Books VALUES (6,'Advanced encompassing implementation','Bryan Morgan','Biography',1985,6.56,2);
INSERT INTO Books VALUES (7,'Open-architected exuding structure','Jacqueline Young','Romance',1927,43.63,95);
INSERT INTO Books VALUES (8,'Persistent local encoding','Troy Cox','Science Fiction',2019,48.99,84);
INSERT INTO Books VALUES (9,'Optimized interactive challenge','Colin Buckley','Fantasy',1987,14.33,70);
INSERT INTO Books VALUES (10,'Ergonomic national hub','Samantha Ruiz','Mystery',2015,24.63,25);

INSERT INTO Books (Book_ID, Title, Author, Genre, Published_Year, Price, Stock) VALUES
(11, 'Secured zero tolerance time-frame', 'Denise Barnes', 'Fantasy', 1998, 35.95, 10),
(12, 'Polarized optimal array', 'Destiny Scott', 'Non-Fiction', 1989, 27.43, 63),
(13, 'Adaptive 5thgeneration orchestration', 'Jaclyn Miller', 'Romance', 1913, 14.04, 99),
(14, 'Re-engineered demand-driven parallelism', 'Jeremy Hayes', 'Science Fiction', 1933, 6.04, 95),
(15, 'User-friendly motivating strategy', 'Keith Smith', 'Non-Fiction', 1997, 23.83, 58),
(16, 'Vision-oriented tangible project', 'Christopher Price', 'Mystery', 1941, 10.07, 8),
(17, 'Reduced secondary core', 'Benjamin Peters', 'Fantasy', 1966, 5.37, 45),
(18, 'Adaptive 4thgeneration concept', 'Hector Palmer', 'Non-Fiction', 2021, 39.47, 32),
(19, 'Progressive asymmetric Internet solution', 'Sean Miller', 'Science Fiction', 1990, 11.31, 1),
(20, 'Face-to-face systematic throughput', 'Teresa Brennan', 'Non-Fiction', 1978, 48.13, 64),
(21, 'Down-sized static interface', 'Todd Brown', 'Biography', 1925, 47.13, 87),
(22, 'Multi-layered optimizing migration', 'Wesley Escobar', 'Fiction', 1908, 39.23, 78),
(23, 'Reverse-engineered context-sensitive hardware', 'Christina Hernandez', 'Mystery', 1967, 38.55, 70),
(24, 'Ergonomic incremental hub', 'Tanya Mcdonald', 'Biography', 1907, 32.74, 54),
(25, 'Devolved mobile conglomeration', 'Alexander Bailey', 'Biography', 1984, 8.55, 79),
(26, 'Multi-channeled multi-tasking capability', 'Patricia Buck', 'Science Fiction', 1964, 21.05, 41),
(27, 'Team-oriented human-resource access', 'Cody Shah', 'Fantasy', 1927, 42.14, 76),
(28, 'Expanded analyzing portal', 'Lisa Coffey', 'Fiction', 1941, 37.51, 79),
(29, 'Quality-focused multi-tasking challenge', 'Katrina Underwood', 'Fiction', 1905, 31.12, 100),
(30, 'Multi-layered global open system', 'Jose Meyer', 'Biography', 2012, 30.58, 37),
(31, 'Implemented encompassing conglomeration', 'Melissa Taylor', 'Fiction', 2010, 21.23, 44),
(32, 'Synergistic dedicated concept', 'Lisa Bailey', 'Mystery', 2021, 21.56, 100),
(33, 'Team-oriented empowering synergy', 'Sandra Williams', 'Non-Fiction', 2023, 35.06, 49),
(34, 'Stand-alone multimedia throughput', 'Jason Jefferson', 'Fantasy', 1939, 16.49, 43),
(35, 'Grass-roots solution-oriented adapter', 'William Turner', 'Non-Fiction', 2018, 31.81, 85),
(36, 'Open-source needs-based secured line', 'Jacob French', 'Mystery', 1949, 34.51, 86),
(37, 'Up-sized tertiary archive', 'Todd Kennedy', 'Fantasy', 1955, 13.08, 3),
(38, 'Pre-emptive asynchronous leverage', 'Courtney Nichols', 'Fantasy', 2022, 16.47, 72),
(39, 'Optimized national process improvement', 'Megan Goodwin', 'Fiction', 1978, 10.99, 42),
(40, 'Adaptive didactic interface', 'Natalie Gonzalez', 'Fiction', 1923, 25.97, 94),
(41, 'Integrated grid-enabled superstructure', 'Katherine Robbins', 'Science Fiction', 1950, 43.09, 78),
(42, 'Pre-emptive interactive focus group', 'Shannon Reese', 'Mystery', 1937, 48.35, 82),
(43, 'Function-based zero-defect initiative', 'Daniel Nunez', 'Romance', 1952, 47.39, 61),
(44, 'Networked systemic implementation', 'Ryan Frank', 'Science Fiction', 1965, 13.55, 0),
(45, 'Centralized cohesive website', 'Luis Rogers', 'Mystery', 1984, 25.49, 59),
(46, 'Distributed attitude-oriented open system', 'Jamie Lambert', 'Romance', 1923, 33.17, 75),
(47, 'Reverse-engineered directional conglomeration', 'John Christian', 'Fiction', 2006, 20.37, 90),
(48, 'Multi-channeled 5thgeneration Internet solution', 'Jennifer Powell', 'Biography', 1963, 24.70, 94),
(49, 'Robust attitude-oriented attitude', 'Zachary Hayes', 'Biography', 1955, 49.50, 15),
(50, 'Face-to-face responsive secured line', 'Lindsey Rodriguez', 'Fantasy', 1970, 37.00, 63);

INSERT INTO books (id, title, author, genre, year, price, quantity) VALUES
(51, 'Visionary optimizing project', 'Douglas Bush', 'Biography', 2022, 46.30, 95),
(52, 'Triple-buffered neutral adapter', 'Kristi Phillips', 'Science Fiction', 2003, 16.53, 85),
(53, 'Triple-buffered multi-tasking help-desk', 'Brian Johnson', 'Biography', 1969, 29.28, 60),
(54, 'Progressive bi-directional methodology', 'Adrian Taylor', 'Fantasy', 2015, 44.78, 27),
(55, 'Streamlined well-modulated migration', 'Isabel Wood', 'Romance', 1934, 27.32, 66),
(56, 'Integrated intermediate Internet solution', 'Stacy Cabrera', 'Mystery', 1976, 7.87, 67),
(57, 'Team-oriented 3rdgeneration encryption', 'Sabrina Hernandez DVM', 'Romance', 1962, 23.59, 27),
(58, 'Profound logistical capacity', 'Ray Walsh', 'Romance', 1995, 34.54, 14),
(59, 'Distributed directional adapter', 'Sarah Smith', 'Mystery', 2012, 26.00, 41),
(60, 'Robust eco-centric capacity', 'Brian Haney', 'Biography', 1990, 35.14, 0),
(61, 'Future-proofed upward-trending process improvement', 'Gregory Wallace', 'Non-Fiction', 1934, 41.05, 10),
(62, 'Re-contextualized real-time strategy', 'Nicole Lynch', 'Fiction', 1953, 26.34, 23),
(63, 'Polarized heuristic database', 'Franklin Mack', 'Fiction', 1989, 22.38, 56),
(64, 'Polarized hybrid emulation', 'Christopher Washington', 'Science Fiction', 1963, 24.10, 86),
(65, 'Total explicit open architecture', 'Zachary Williams', 'Science Fiction', 1982, 22.70, 7),
(66, 'Synergized bandwidth-monitored workforce', 'Amy Marks', 'Fantasy', 1961, 28.29, 93),
(67, 'Grass-roots zero tolerance archive', 'Michelle Taylor', 'Biography', 1966, 10.23, 25),
(68, 'Centralized responsive firmware', 'Alexander Nelson', 'Biography', 1919, 29.55, 23),
(69, 'Cloned impactful solution', 'Nichole Smith', 'Fantasy', 1961, 8.79, 50),
(70, 'Customer-focused context-sensitive process improvement', 'Mary Warren', 'Science Fiction', 2021, 23.45, 19),
(71, 'Organized methodical productivity', 'Daniel Santos', 'Biography', 1950, 38.50, 40),
(72, 'Networked contextually-based throughput', 'Andrea Eaton', 'Fantasy', 1959, 46.54, 65),
(73, 'Realigned multi-tasking installation', 'Patrick Contreras', 'Mystery', 1933, 21.23, 39),
(74, 'Automated scalable installation', 'Mitchell Hess', 'Biography', 1986, 45.12, 83),
(75, 'Multi-layered fresh-thinking solution', 'James Buckley', 'Science Fiction', 1912, 47.11, 3),
(76, 'Innovative directional matrix', 'David Castaneda', 'Romance', 2009, 41.33, 9),
(77, 'Cross-platform asynchronous encryption', 'Michelle Edwards', 'Fantasy', 1935, 44.28, 88),
(78, 'Synergized mobile architecture', 'Gregory Perez', 'Romance', 1988, 13.07, 86),
(79, 'Extended actuating encryption', 'Kylie Brown', 'Romance', 1935, 32.48, 4),
(80, 'Compatible 24/7 forecast', 'Michael Anderson', 'Science Fiction', 1985, 34.84, 19),
(81, 'Team-oriented logistical analyzer', 'Scott Gentry', 'Science Fiction', 2010, 44.19, 13),
(82, 'Optimized multi-state capacity', 'Sean Griffin', 'Non-Fiction', 2001, 45.70, 38),
(83, 'Sharable regional product', 'Michael Walker', 'Biography', 2022, 8.94, 92),
(84, 'Stand-alone 24hour interface', 'James Ortiz', 'Romance', 1980, 44.59, 20),
(85, 'Enhanced impactful system engine', 'Bianca Matthews', 'Science Fiction', 1939, 19.43, 29),
(86, 'Re-engineered 24/7 projection', 'Kathryn Williams', 'Non-Fiction', 1948, 25.51, 44),
(87, 'Decentralized actuating analyzer', 'Robert Johnson', 'Fantasy', 1986, 34.84, 98),
(88, 'Robust tangible hardware', 'Paul Miles', 'Non-Fiction', 1999, 40.22, 32),
(89, 'Mandatory exuding monitoring', 'Vincent Miles', 'Romance', 1959, 14.72, 16),
(90, 'Business-focused eco-centric help-desk', 'Sarah Miller', 'Science Fiction', 1965, 16.56, 10),
(91, 'Integrated exuding application', 'Elizabeth Morrison', 'Romance', 1923, 27.82, 81),
(92, 'Switchable context-sensitive productivity', 'Ashley Rodriguez', 'Fantasy', 1911, 34.21, 58),
(93, 'Object-based multimedia algorithm', 'Frank Aguilar', 'Non-Fiction', 2009, 17.43, 37),
(94, 'Open-source 5thgeneration alliance', 'Laurie Allen', 'Science Fiction', 2001, 16.86, 75),
(95, 'Function-based heuristic analyzer', 'Craig Smith', 'Biography', 1990, 49.53, 11),
(96, 'Up-sized impactful artificial intelligence', 'Rebecca Delgado', 'Science Fiction', 1913, 12.55, 73),
(97, 'Open-architected stable solution', 'Chad Nichols', 'Science Fiction', 2017, 45.74, 70),
(98, 'Digitized encompassing definition', 'Thomas Gonzales', 'Fantasy', 1996, 46.71, 83),
(99, 'Optimized heuristic challenge', 'Tracy Hendrix', 'Science Fiction', 1962, 46.93, 26),
(100, 'Synchronized client-server service-desk', 'James Alvarado', 'Fiction', 1906, 49.89, 29);


INSERT INTO Customers VALUES (1,'Deborah Griffith','balljoseph@wright-keith.net',1234567891,'South Craigfort','Denmark');
INSERT INTO Customers VALUES (2,'Crystal Clements','kimberlybennett@curtis.com',1234567892,'East Derekberg','Nicaragua');
INSERT INTO Customers VALUES (3,'Susan Fuller','beanmichael@burnett-stewart.net',1234567893,'Austinbury','Equatorial Guinea');
INSERT INTO Customers VALUES (4,'Jamie Ramirez','amandahood@warren.com',1234567894,'Dianamouth','Slovenia');
INSERT INTO Customers VALUES (5,'Marcus Murphy','connerjohn@yahoo.com',1234567895,'Smithbury','Guinea-Bissau');
INSERT INTO Customers VALUES (6,'Stephen Vasquez','ricemiguel@yahoo.com',1234567896,'Hamiltonstad','Rwanda');
INSERT INTO Customers VALUES (7,'Susan Hicks','jeffrey91@yahoo.com',1234567897,'East Rebecca','Montenegro');
INSERT INTO Customers VALUES (8,'Matthew Johnson','austinkenneth@manning.net',1234567898,'Kirstenborough','Israel');
INSERT INTO Customers VALUES (9,'Matthew Williams','jeffrey41@diaz.com',1234567899,'Rebeccafurt','Somalia');
INSERT INTO Customers VALUES (10,'Ronald Osborn','staciekelley@heath.com',1234567900,'Lake Benjamin','Cameroon');

INSERT INTO customers (Customer_ID, Name, Email, Phone, City, Country) VALUES
(11, 'Thomas Garcia', 'rmiller@gmail.com', '1234567901', 'West Monicabury', 'Argentina'),
(12, 'Jennifer Murray', 'wilsonbrittany@hotmail.com', '1234567902', 'South Ashleychester', 'Zimbabwe'),
(13, 'Kristine Kim', 'sarahwilliams@hotmail.com', '1234567903', 'Lake Robert', 'Nigeria'),
(14, 'John Wood', 'johnsonalexander@gmail.com', '1234567904', 'Richardsonville', 'New Caledonia'),
(15, 'Vanessa Gaines', 'tbullock@gmail.com', '1234567905', 'Rodriguezmouth', 'Wallis and Futuna'),
(16, 'Stacey Flores', 'jackjackson@hotmail.com', '1234567906', 'East Michaelfurt', 'Saint Helena'),
(17, 'Christine Maldonado', 'ztaylor@yahoo.com', '1234567907', 'Smithborough', 'Chile'),
(18, 'David Watson', 'laurenlawson@alvarez-mcfarland.com', '1234567908', 'New Josephtown', 'Equatorial Guinea'),
(19, 'Marc Nash', 'joshua59@gmail.com', '1234567909', 'Davidton', 'French Guiana'),
(20, 'Robert Salas', 'schultzjohn@thomas.com', '1234567910', 'Schultzchester', 'Denmark'),
(21, 'Edgar Frost', 'maria51@gmail.com', '1234567911', 'Jonathanhaven', 'Saudi Arabia'),
(22, 'Stacey Adams', 'fjohnson@gmail.com', '1234567912', 'Clintonmouth', 'Iceland'),
(23, 'Hannah Drake', 'sandersallen@hotmail.com', '1234567913', 'Deannabury', 'Faroe Islands'),
(24, 'Christina Mitchell', 'justin67@yahoo.com', '1234567914', 'Bridgestown', 'Trinidad and Tobago'),
(25, 'James Martin', 'reynoldstyrone@wiggins.com', '1234567915', 'North James', 'Yemen'),
(26, 'Dylan Bell', 'isaac43@gmail.com', '1234567916', 'North Aaron', 'Guam'),
(27, 'Debbie Sampson', 'collin21@hotmail.com', '1234567917', 'Christopherburgh', 'Bahamas'),
(28, 'William Burns', 'valeriemack@gmail.com', '1234567918', 'South Kristyville', 'Netherlands'),
(29, 'John Maxwell', 'martinsamantha@martin.net', '1234567919', 'Nolanstad', 'Cuba'),
(30, 'Dylan Garcia', 'oanderson@yahoo.com', '1234567920', 'Hallfort', 'Turkey'),
(31, 'Amanda Morton', 'lolsen@jones.com', '1234567921', 'Marktown', 'Antigua and Barbuda'),
(32, 'Jeffrey Shannon', 'nmcmillan@smith.com', '1234567922', 'New Carlosbury', 'Malta'),
(33, 'Kristin Hall', 'michele78@yahoo.com', '1234567923', 'Underwoodfurt', 'Cuba'),
(34, 'Ryan Love', 'joseph37@gmail.com', '1234567924', 'Leestad', 'Anguilla'),
(35, 'Daniel Gonzalez', 'nday@combs.com', '1234567925', 'Hoovermouth', 'Fiji'),
(36, 'Benjamin Wallace', 'alexander26@hotmail.com', '1234567926', 'Schroederton', 'Botswana'),
(37, 'Ryan Lara', 'benjamin38@thompson-adams.net', '1234567927', 'Port Jameschester', 'Chad'),
(38, 'Nicholas Harris', 'christine93@perkins.com', '1234567928', 'Davistown', 'Canada'),
(39, 'Tonya Arnold', 'aprice@hotmail.com', '1234567929', 'Nelsonmouth', 'Japan'),
(40, 'Beth Gomez', 'wjackson@bowen.com', '1234567930', 'Hollyhaven', 'Myanmar'),
(41, 'Samuel Daniels', 'andrew07@gmail.com', '1234567931', 'Codyton', 'Benin'),
(42, 'Susan Wilson', 'ohood@yahoo.com', '1234567932', 'Jeffreystad', 'Niger'),
(43, 'Steven Stone', 'jill61@herrera.org', '1234567933', 'Ashleytown', 'Maldives'),
(44, 'Alexis Gallegos', 'craig42@smith-carroll.com', '1234567934', 'Conniefort', 'Lesotho'),
(45, 'Jennifer Fowler', 'whitemargaret@blackwell.info', '1234567935', 'Carlsonfort', 'Ireland'),
(46, 'Travis Wells', 'stacywilson@hotmail.com', '1234567936', 'New David', 'Moldova'),
(47, 'Debra Park', 'dawnmyers@munoz-ayala.com', '1234567937', 'Phillipsmouth', 'Isle of Man'),
(48, 'Paula Harris', 'lisa63@barber.org', '1234567938', 'Reginaside', 'Saint Kitts and Nevis'),
(49, 'Anne Dean', 'katrinaedwards@anderson.org', '1234567939', 'Jonathanberg', 'Heard Island and McDonald Islands'),
(50, 'Kimberly Thomas', 'omoore@garcia.com', '1234567940', 'New Ruben', 'Tajikistan');

INSERT INTO customers (Customer_ID, Name, Email, Phone, City, Country) VALUES
(51, 'Cynthia Walker', 'huertarobert@gmail.com', '1234567941', 'Lake Robertfort', 'Yemen'),
(52, 'Ian Lopez', 'larry64@gmail.com', '1234567942', 'North Ashleyside', 'Guyana'),
(53, 'Sandra Coleman', 'emerritt@yahoo.com', '1234567943', 'Lake Karenmouth', 'Netherlands Antilles'),
(54, 'Rachel Jones', 'bmedina@hotmail.com', '1234567944', 'Brendafurt', 'Central African Republic'),
(55, 'Michelle Stevens', 'janicethompson@jones-arnold.com', '1234567945', 'Wagnerfurt', 'Romania'),
(56, 'Dr. Susan Nichols', 'hernandezchelsea@thompson.com', '1234567946', 'East Lisaberg', 'Netherlands Antilles'),
(57, 'Nicolas Joseph', 'debra75@gmail.com', '1234567947', 'Lindaburgh', 'Congo'),
(58, 'Michael Young', 'anthony39@gmail.com', '1234567948', 'Lake Tannerton', 'United Arab Emirates'),
(59, 'Andrew Collins', 'msanchez@king.net', '1234567949', 'West Sheri', 'Guatemala'),
(60, 'Steven Matthews', 'timothy98@durham.info', '1234567950', 'Lake Sharonville', 'Senegal'),
(61, 'Lindsay Reynolds', 'cynthia58@robinson.biz', '1234567951', 'Port Manuelfurt', 'Belgium'),
(62, 'Paul Heath', 'pamelamartin@yahoo.com', '1234567952', 'East Shannonview', 'Isle of Man'),
(63, 'Manuel Lewis', 'alicia70@hotmail.com', '1234567953', 'Brendatown', 'Heard Island and McDonald Islands'),
(64, 'Jennifer Clark', 'michael13@cantu-hawkins.com', '1234567954', 'Jamesville', 'British Indian Ocean Territory (Chagos Archipelago)'),
(65, 'Laura Wiggins', 'christopherhughes@gmail.com', '1234567955', 'Sherryport', 'Tokelau'),
(66, 'Molly Diaz', 'rwhite@gmail.com', '1234567956', 'Brandonside', 'Seychelles'),
(67, 'Denise Chapman', 'andrew13@pacheco-hughes.com', '1234567957', 'Garcialand', 'Cote d\'Ivoire'),
(68, 'Kimberly Smith', 'imiller@gmail.com', '1234567958', 'East Raymond', 'Indonesia'),
(69, 'Gary Kaiser', 'linda39@yahoo.com', '1234567959', 'South David', 'Saint Kitts and Nevis'),
(70, 'Laura Duarte', 'jimenezchristine@dickson.com', '1234567960', 'West Kimberlyhaven', 'Finland'),
(71, 'Mrs. Natalie Hopkins DDS', 'douglasmccarthy@woodward-gallagher.com', '1234567961', 'West Sarah', 'United States Virgin Islands'),
(72, 'Ms. Nicole Lee', 'mary21@henry-maynard.com', '1234567962', 'West Ethan', 'Saint Barthelemy'),
(73, 'Peter Krueger', 'vwelch@yahoo.com', '1234567963', 'New Lawrenceton', 'Zimbabwe'),
(74, 'Bryan Moore', 'brendawong@juarez-camacho.biz', '1234567964', 'Blackchester', 'Norfolk Island'),
(75, 'Carla Webb', 'jennifer35@mann.biz', '1234567965', 'Jasonmouth', 'Gabon'),
(76, 'Kim Wang', 'jonesdylan@gmail.com', '1234567966', 'Janicemouth', 'Turkey'),
(77, 'Jason Villegas', 'thomas00@stewart.com', '1234567967', 'Fieldsland', 'Senegal'),
(78, 'Dr. Laurie Trevino', 'ryanbuchanan@hotmail.com', '1234567968', 'Amberton', 'Saint Barthelemy'),
(79, 'Daniel Brown', 'walkerrichard@young-grimes.com', '1234567969', 'Villarrealland', 'Pakistan'),
(80, 'Joy Fisher', 'kentchristian@gmail.com', '1234567970', 'West Rogerview', 'Tuvalu'),
(81, 'Matthew Hall', 'patrick24@hotmail.com', '1234567971', 'Lake Zachary', 'Suriname'),
(82, 'Shaun Fernandez', 'greenmichael@hotmail.com', '1234567972', 'Wrightburgh', 'Malaysia'),
(83, 'Aaron Clark', 'jessica98@hotmail.com', '1234567973', 'Thomashaven', 'Fiji'),
(84, 'Gary Blair', 'leonardtaylor@bowers.net', '1234567974', 'Lake Paul', 'Armenia'),
(85, 'Sheila Coleman', 'cmyers@cooper-davies.com', '1234567975', 'South Connie', 'Bangladesh'),
(86, 'Molly Robinson', 'rebeccataylor@mcbride.info', '1234567976', 'South Kathleen', 'Cuba'),
(87, 'Nathan Robbins', 'jenniferrodgers@garrison-baker.com', '1234567977', 'East Tylertown', 'Bolivia'),
(88, 'Gregory Joseph', 'kimangela@yahoo.com', '1234567978', 'Fletcherview', 'Algeria'),
(89, 'Erik Wang', 'gparks@yahoo.com', '1234567979', 'New Desireebury', 'United Kingdom'),
(90, 'Matthew Meyer', 'moorebrittany@yahoo.com', '1234567980', 'West Christopher', 'Benin'),
(91, 'Breanna Gonzalez', 'usimon@wright.com', '1234567981', 'Andrewberg', 'Sierra Leone'),
(92, 'Heather Hamilton', 'kathy50@hotmail.com', '1234567982', 'Davidshire', 'Croatia'),
(93, 'Jacob Cox', 'frank29@yahoo.com', '1234567983', 'Robertburgh', 'San Marino'),
(94, 'Mr. David Cox', 'millermichael@gmail.com', '1234567984', 'West Anthony', 'New Zealand'),
(95, 'Laura Fox', 'samanthaking@hogan.org', '1234567985', 'New Theresa', 'Guadeloupe'),
(96, 'Levi Pierce', 'bayers@gmail.com', '1234567986', 'Dayburgh', 'Bouvet Island (Bouvetoya)'),
(97, 'Daniel Sanford', 'amanda13@yahoo.com', '1234567987', 'Lake Stevenhaven', 'French Southern Territories'),
(98, 'Robert Blair', 'anicholson@gregory.com', '1234567988', 'Josephfurt', 'United States Virgin Islands'),
(99, 'Timothy Lane', 'janet99@davis.net', '1234567989', 'South Heather', 'Turkey'),
(100, 'Karla Guerrero', 'wsimpson@yahoo.com', '1234567990', 'Dustinview', 'Argentina');

INSERT INTO Orders VALUES (1,84,169,'2023-05-26',8,188.56);
INSERT INTO Orders VALUES (2,137,301,'2023-01-23',10,216.6);
INSERT INTO Orders VALUES (3,216,261,'2024-05-27',6,85.5);
INSERT INTO Orders VALUES (4,433,343,'2023-11-25',7,301.21);
INSERT INTO Orders VALUES (5,14,431,'2023-07-26',7,136.36);
INSERT INTO Orders VALUES (6,439,119,'2024-10-11',5,249.4);
INSERT INTO Orders VALUES (7,195,467,'2023-10-23',6,82.92);
INSERT INTO Orders VALUES (8,32,159,'2024-05-07',4,144.84);
INSERT INTO Orders VALUES (9,109,407,'2024-01-04',9,379.71);
INSERT INTO Orders VALUES (10,94,122,'2024-07-09',4,123.0);
INSERT INTO orders (Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) VALUES
(11, 131, 206, '2023-10-16', 1, 38.01),
(12, 454, 3, '2024-06-17', 2, 31.50),
(13, 420, 180, '2023-06-08', 5, 125.45),
(14, 454, 319, '2023-08-24', 2, 85.22),
(15, 127, 479, '2023-01-10', 6, 229.62),
(16, 412, 196, '2023-10-06', 8, 53.52),
(17, 462, 481, '2023-03-20', 5, 52.75),
(18, 377, 101, '2024-08-07', 4, 193.96),
(19, 496, 60, '2023-11-17', 9, 316.26),
(20, 195, 67, '2023-07-14', 1, 10.23),
(21, 356, 287, '2024-12-05', 3, 120.57),
(22, 177, 427, '2024-06-10', 3, 54.00),
(23, 119, 301, '2023-08-04', 3, 64.98),
(24, 266, 192, '2023-07-10', 3, 145.11),
(25, 265, 250, '2023-05-25', 10, 126.50),
(26, 294, 407, '2023-06-11', 1, 42.19),
(27, 310, 156, '2024-12-03', 1, 31.68),
(28, 151, 423, '2024-11-27', 8, 205.04),
(29, 305, 446, '2023-10-05', 8, 275.92),
(30, 438, 248, '2023-09-23', 6, 281.94),
(31, 386, 279, '2024-03-12', 8, 244.00),
(32, 292, 313, '2024-12-06', 4, 188.64),
(33, 478, 253, '2024-04-15', 5, 58.30),
(34, 463, 146, '2024-06-27', 3, 43.50),
(35, 303, 172, '2023-07-08', 5, 184.10),
(36, 417, 260, '2024-01-21', 9, 446.31),
(37, 110, 411, '2023-12-27', 4, 60.12),
(38, 15, 466, '2023-06-26', 4, 148.68),
(39, 488, 422, '2024-08-03', 8, 367.28),
(40, 120, 450, '2024-07-03', 2, 91.50),
(41, 418, 147, '2024-05-05', 8, 361.60),
(42, 415, 70, '2023-09-19', 3, 70.35),
(43, 199, 305, '2024-03-25', 7, 221.62),
(44, 234, 460, '2024-07-24', 5, 179.40),
(45, 470, 67, '2024-11-16', 4, 40.92),
(46, 319, 442, '2023-12-08', 1, 48.48),
(47, 6, 360, '2024-07-23', 3, 148.02),
(48, 458, 477, '2024-02-25', 5, 138.55),
(49, 322, 336, '2024-08-14', 7, 168.56),
(50, 474, 88, '2024-04-06', 1, 40.22);

INSERT INTO orders (Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) VALUES
(51, 155, 491, '2024-09-01', 5, 74.35),
(52, 173, 161, '2024-05-20', 7, 151.20),
(53, 160, 242, '2024-01-02', 3, 101.37),
(54, 446, 393, '2024-09-01', 3, 132.00),
(55, 18, 281, '2024-01-11', 7, 114.38),
(56, 76, 333, '2024-11-06', 5, 138.80),
(57, 24, 34, '2024-12-02', 2, 32.98),
(58, 329, 369, '2024-12-02', 7, 158.55),
(59, 225, 188, '2023-02-11', 7, 140.98),
(60, 404, 49, '2023-04-26', 9, 445.50),
(61, 405, 361, '2024-07-02', 5, 198.75),
(62, 364, 324, '2024-04-06', 5, 230.40),
(63, 16, 469, '2024-04-13', 9, 209.25),
(64, 348, 160, '2024-07-19', 10, 344.80),
(65, 54, 198, '2023-05-06', 9, 201.42),
(66, 180, 323, '2023-09-08', 8, 286.64),
(67, 260, 129, '2023-04-20', 9, 366.66),
(68, 246, 319, '2023-03-21', 10, 426.10),
(69, 261, 109, '2024-03-23', 4, 34.16),
(70, 49, 447, '2023-05-29', 6, 217.50),
(71, 500, 438, '2024-06-11', 8, 267.12),
(72, 290, 5, '2024-10-19', 1, 10.95),
(73, 411, 81, '2023-10-07', 1, 44.19),
(74, 461, 132, '2023-04-08', 10, 204.60),
(75, 291, 375, '2023-11-30', 5, 170.75),
(76, 470, 466, '2024-09-02', 10, 371.70),
(77, 497, 242, '2024-03-20', 7, 236.53),
(78, 44, 196, '2024-07-23', 5, 33.45),
(79, 134, 28, '2023-10-06', 2, 75.02),
(80, 265, 17, '2023-06-04', 8, 42.96),
(81, 383, 325, '2024-02-13', 5, 202.00),
(82, 413, 387, '2023-03-08', 5, 237.10),
(83, 457, 335, '2024-01-16', 8, 378.32),
(84, 280, 49, '2024-07-05', 6, 297.00),
(85, 75, 31, '2023-03-14', 9, 191.07),
(86, 361, 441, '2024-04-28', 3, 122.16),
(87, 167, 435, '2024-07-11', 2, 55.52),
(88, 126, 262, '2023-04-16', 5, 105.10),
(89, 305, 113, '2024-08-06', 2, 12.76),
(90, 457, 137, '2023-12-23', 6, 157.98),
(91, 226, 142, '2024-10-13', 10, 489.60),
(92, 329, 325, '2023-02-24', 5, 202.00),
(93, 366, 427, '2024-10-23', 3, 54.00),
(94, 136, 88, '2024-07-06', 6, 241.32),
(95, 447, 426, '2023-10-26', 1, 32.82),
(96, 456, 336, '2023-08-09', 8, 192.64),
(97, 408, 221, '2023-07-15', 10, 248.10),
(98, 429, 352, '2023-12-15', 1, 6.01),
(99, 166, 250, '2023-04-20', 3, 37.95),
(100, 207, 63, '2023-07-14', 1, 22.38);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Retrieve all books in the "Fiction" genre:

Select * from Books
where Genre = "Fiction";

-- Find books published after the year 1950:

Select * from Books
where Published_Year > "1950"
order by Published_Year;

-- List all customers from the Denmark:

Select * from Customers 
where Country = "Denmark";

-- Show orders placed in November 2023:

Select * from Orders 
where month(Order_Date) = '11' and year(Order_Date) ='2023';

-- Retrieve the total stock of books available:

Select sum(Stock) as Total_Stock from Books;

-- Find the details of the most expensive book:

Select * from Books order by price desc limit 1;

Select * from Books where price = (Select max(price) from Books);

-- Show all customers who ordered more than 1 quantity of a book:

Select * from Orders 
where quantity >1;

-- Retrieve all orders where the total amount exceeds $100:

Select * from Orders 
where Total_Amount > 100;

-- List all genres available in the Books table:

Select distinct Genre from Books;

-- Find the book with the lowest stock:

Select * from Books 
order by stock
limit 1;

-- Calculate the total revenue generated from all orders:

Select sum(Total_Amount) as Total_Revenue from Orders;

-- Retrieve the total number of books sold for each genre:

SELECT b.Genre, SUM(o.Quantity) AS Total_Books_sold
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.Genre;

-- Find the average price of books in the "Fantasy" genre:

Select genre, avg(price) as Average_Price
from Books
where genre = "Fantasy";

--  Find the most frequently ordered book:

SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;

-- Show the top 3 most expensive books of 'Fantasy' Genre :

SELECT * FROM books
WHERE genre ='Fantasy'
ORDER BY price DESC LIMIT 3;

-- Retrieve the total quantity of books sold by each author:

SELECT b.author, SUM(o.quantity) AS Total_Books_Sold
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY b.Author;

-- List the cities where customers who spent over $30 are located:

SELECT DISTINCT c.city, total_amount
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
WHERE o.total_amount > 30;

-- Find the customer who spent the most on orders:

SELECT c.customer_id, c.name,
SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent 
Desc LIMIT 1;

-- Calculate the stock remaining after fulfilling all orders:

SELECT b.book_id, b.title, b.stock, 
COALESCE(SUM(o.quantity),0) AS Order_quantity,  
b.stock-COALESCE(SUM(o.quantity),0) AS Remaining_Quantity
FROM books b
LEFT JOIN orders o ON b.book_id=o.book_id
GROUP BY b.book_id 
ORDER BY b.book_id;
