INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) values (0,	'3K096I98581DHSNUP', 'Volkswagen','Tiguan','2019','Blue');
INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) values (1,	'ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red');
INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) values (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018','White');
INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) values (3,	'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018','Silver');
INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) values (4,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
INSERT INTO cars (ID, VIN, Manufacturer, Model, Year, Color) values (5,	'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Cross Country', '2019', 'Gray');

INSERT INTO customers(ID,`Customer ID`,Name,Phone,Email,Address,City,State_Province,Country,Postal)
 values (0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO customers(ID,`Customer ID`,Name,Phone,Email,Address,City,State_Province,Country,Postal)
 values (1,20001,'Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria','1150'
);
INSERT INTO customers(ID,`Customer ID`,Name,Phone,Email,Address,City,State_Province,Country,Postal)
 values (2,30001,'Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States','20546'
); 


INSERT INTO salespersons (ID,Staff_D,Name,Store) values (0,'00001','Petey Cruiser','Madrid');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (1,'00002','Anna Sthesia','Barcelona');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (2,'00003','Paul Molive','Berlin');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (3,'00004','Gail Forcewind','Paris');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (4,'00005','Paige Turner','Mimia');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (5,'00006','Bob Frapples','Mexico City');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (6,'00007','Walter Melon','Amsterdam');
INSERT INTO salespersons (ID,Staff_D,Name,Store) values (7,'00008','Shonda Leer','São Paulo');

INSERT INTO invoices (ID,Invoice_Number,Date,Cars,Customers,Salespersons) values (0,'852399038','2018-08-22',0,1,3);
INSERT INTO invoices (ID,Invoice_Number,Date,Cars,Customers,Salespersons) values (1,'731166526','2018-12-31',3,0,5);
INSERT INTO invoices (ID,Invoice_Number,Date,Cars,Customers,Salespersons) values (2,'271135104','2019-01-22',2,2,7);