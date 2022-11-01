INSERT INTO cars (idCars, VIN,Manufacturer,Model,Year,Colour)
VALUES (0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue');
INSERT INTO cars (idCars, VIN,Manufacturer,Model,Year,Colour)
VALUES (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
INSERT INTO cars (idCars, VIN,Manufacturer,Model,Year,Colour)
VALUES (2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
INSERT INTO cars (idCars, VIN,Manufacturer,Model,Year,Colour)
VALUES (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
INSERT INTO cars (idCars, VIN,Manufacturer,Model,Year,Colour)
VALUES (4,'DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');
INSERT INTO cars (idCars, VIN,Manufacturer,Model,Year,Colour)
VALUES (5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (0	,	'00001'	,	'Petey Cruiser'		,	'Madrid');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (1	,	'00002'	,	'Anna Sthesia'		,	'Barcelona');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (2	,	'00003'	,	'Paul Molive'		,	'Berlin');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (3	,	'00004'	,	'Gail Forcewind'	,	'Paris');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (4	,	'00005'	,	'Paige Turner'		,	'Mimia');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (5	,	'00006'	,	'Bob Frapples'		,	'Mexico City');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (6	,	'00007'	,	'Walter Melon'		,	'Amsterdam');
INSERT INTO Salespersons (idSalespersons,Staff_ID,Name,Store)
VALUES (7,'00008','Shonda Leer','São Paulo');

INSERT INTO Customers (idCustomers, Customer_ID,Name,Phone_Number,Email,Adress,City,`State/Province`,Country,Zip_code)
VALUES (0,'10001','Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO Customers (idCustomers, Customer_ID,Name,Phone_Number,Email,Adress,City,`State/Province`,Country,Zip_code)
VALUES (1,'20001','Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria','1150');
INSERT INTO Customers (idCustomers, Customer_ID,Name,Phone_Number,Email,Adress,City,`State/Province`,Country,Zip_code)
VALUES (2,'30001','Katherine Johnson','+1 202 358 0000','-','300 E St SW',"Washington, DC",'Washington','United States','20546');

INSERT INTO invoices (idInvoices, Invoice_ID,Invoice_Number,Date,Cars_idCars,Customers_idCustomers,Salespersons_idSalespersons)
VALUES (0,'0','852399038','2018-08-22',0,1,3);
INSERT INTO invoices (idInvoices, Invoice_ID,Invoice_Number,Date,Cars_idCars,Customers_idCustomers,Salespersons_idSalespersons)
VALUES (1,'1','731166526','2018-12-31',3,0,5);
INSERT INTO invoices (idInvoices, Invoice_ID,Invoice_Number,Date,Cars_idCars,Customers_idCustomers,Salespersons_idSalespersons)
VALUES (2,'2','271135104','2019-01-22',2,2,7);