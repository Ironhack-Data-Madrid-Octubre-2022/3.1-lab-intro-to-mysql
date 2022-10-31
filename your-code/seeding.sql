insert into Cars (idCars,VIN,Manufacturer,Model,Year,Colour)
values (0,'3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue');

insert into Cars (idCars,VIN,Manufacturer,Model,Year,Colour)
values (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red');

insert into Cars (idCars,VIN,Manufacturer,Model,Year,Colour)
values (2,'RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');

insert into Cars (idCars,VIN,Manufacturer,Model,Year,Colour)
values (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');

insert into Cars (idCars,VIN,Manufacturer,Model,Year,Colour)
values (4,'DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');

insert into Cars (idCars,VIN,Manufacturer,Model,Year,Colour)
values (5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (0,'00001','Petey Cruiser','Madrid');
insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (1,'00002','Anna Sthesia','Barcelona');
insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (2,'00003','Paul Molive','Berlin');
insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (3,'00004','Gail Forcewind','Paris');
insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (4,'00005','Bob Frapples','Mexico City');
insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (5,'00006','Walter Melon','Amsterdam');
insert into Salespersons (idsalespersons,Staff ID,Name,Store)
values (6,'00007','Shonda Leer','São Paulo');



insert into Customers (idCustomers,`Customer ID`,Name,`Phone Number`,Email,Adress,City,`State/Province`,Country,`Zip code`)
values (0,'10001','Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');

insert into Customers (idCustomers,`Customer ID`,Name,`Phone Number`,Email,Adress,City,`State/Province`,Country,`Zip code`)
values (1,'20001','Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria','1150');

insert into Customers (idCustomers,`Customer ID`,Name,`Phone Number`,Email,Adress,City,`State/Province`,Country,`Zip code`)
values (2,'30001','	Katherine Johnson','+1 202 358 0000'`Phone Number`,'-','300 E St SW','Washington, DC','Washington','United States','20546')


insert into Invoicesinvoices (idInvoices,`Invoice Number`,Date,Cars,Customers,Salespersons)
values (0,'852399038','22-08-2018','0','1','3');

insert into Invoicesinvoices (idInvoices,`Invoice Number`,Date,Cars_idCars,Customers_idCustomers,Salespersons)
values (1,'731166526','22-08-2018','3','0','5');

insert into Invoicesinvoices (idInvoices,`Invoice Number`,Date,Cars_idCars,Customers_idCustomers,Salespersons)
values (2,'	271135104','22-01-2019','2','2','7');
