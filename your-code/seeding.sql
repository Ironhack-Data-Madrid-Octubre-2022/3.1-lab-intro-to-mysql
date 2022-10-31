use Car_sales;

insert into CAR (idCar, VIN, Manufacturer, Model, Year, Color)
values (0,'3K096I98581DHSNUP', 'Volkswagen','Tiguan', 2019, 'Blue');

insert into CAR (idCar, VIN, Manufacturer, Model, Year, Color)
values (1,'ZM8G7BEUQZ97IH46V', 'Peugeot','Rifter', 2019, 'Red');

insert into CAR (idCar, VIN, Manufacturer, Model, Year, Color)
values (2,'RKXVNNIHLVVZOUB4M', 'Ford','Fusion', 2018, 'White');

select * from CAR;

insert into CAR (idCar, VIN, Manufacturer, Model, Year, Color)
values (3,'HKNDGS7CU31E9Z7JW', 'Toyota','RAV4', 2018, 'Silver');

insert into CAR (idCar, VIN, Manufacturer, Model, Year, Color)
values (4,'DAM41UDN3CHU2WVF6', 'Volvo','V60', 2019, 'Gray');

insert into CAR (idCar, VIN, Manufacturer, Model, Year, Color)
values (5,'DAM41UDN3CHU2WVF6', 'Volvo','V60 Cross Country', 2019, 'Gray');

insert into COSTUMER (idCOSTUMER, CostumerID, Name, Phone, Email, Adress, City, StateProvince, Country, ZipPostal)
values (0,'10001', 'Pablo Picasso','+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid','Spain','28045');

insert into COSTUMER (idCOSTUMER, CostumerID, Name, Phone, Email, Adress, City, StateProvince, Country, ZipPostal)
values (1,'20001', 'Hedy Lamarr','+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna','Austria','1150');

insert into COSTUMER (idCOSTUMER, CostumerID, Name, Phone, Email, Adress, City, StateProvince, Country, ZipPostal)
values (2,'30001', 'Katherine Johnson','+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington','United States','20546');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (0,'00001', 'Petey Cruiser','Madrid');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (1,'00002', 'Anna Sthesia','Barcelona');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (2,'00003', 'Paul Molive','Berlin');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (3,'00004', 'Gail Forcewind','Paris');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (4,'00005', 'Paige Turner','Mimia');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (5,'00006', 'Bob Frapples','Mexico City');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (6,'00007', 'Walter Melon','Amsterdam');

insert into SALESPERSON (idSALESPERSON, StaffID, Name, Store)
values (7,'00008', 'Shonda Leer','São Paulo');

insert into INVOICES (idINVOICES, InvoiceNumber, Date, CAR_idCar, SALESPERSON_idSALESPERSON, COSTUMER_idCOSTUMER)
values (0,852399038, '2018-08-22',0,3,1);

insert into INVOICES (idINVOICES, InvoiceNumber, Date, CAR_idCar, SALESPERSON_idSALESPERSON, COSTUMER_idCOSTUMER)
values (1,731166526, '2018-12-31',3,5,0);

insert into INVOICES (idINVOICES, InvoiceNumber, Date, CAR_idCar, SALESPERSON_idSALESPERSON, COSTUMER_idCOSTUMER)
values (2,271135104, '2019-01-22',2,7,2);