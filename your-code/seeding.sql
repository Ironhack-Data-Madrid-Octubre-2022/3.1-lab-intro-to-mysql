Insert into salespersons (idsalespersons, staffid, name, store)
values(0, 00001, 'Petey Cruiser', 'Madrid');
Insert into salespersons (idsalespersons, staffid, name, store)
values(1, 00002, 'Anna Sthesia', 'Barcelona');
Insert into salespersons (idsalespersons, staffid, name, store)
values(2, 00003, 'Paul Molive', 'Berlin');
Insert into salespersons (idsalespersons, staffid, name, store)
values(3, 00004, 'Gail Forcewind', 'Paris');
Insert into salespersons (idsalespersons, staffid, name, store)
values(4, 00005, 'Paige Turner', 'Mimia');
Insert into salespersons (idsalespersons, staffid, name, store)
values(5, 00006, 'Bob Frapples', 'Mexico City');
Insert into salespersons (idsalespersons, staffid, name, store)
values(6, 00007, 'Walter Melon', 'Amsterdam');
Insert into salespersons (idsalespersons, staffid, name, store)
values(7, 00008, 'Shonda Leer', 'Sao Paulo');

Insert into customers (idCustomers, customerid, name, phone, email, address, city, state, country, postal)
values(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera,14', 'Madrid', 'Madrid', 'Spain', 28045);
Insert into customers (idCustomers, customerid, name, phone, email, address, city, state, country, postal)
values(1, 20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', 1150);
Insert into customers (idCustomers, customerid, name, phone, email, address, city, state, country, postal)
values(2, 30001, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington DC', 'Washington', 'United States', 20546);


Insert into cars (idCars, vin, manufacturer, model, year, color)
values(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
Insert into cars (idCars, vin, manufacturer, model, year, color)
values(1, 'RKXVNNIHLVVZOUB4M', 'Peugeot', 'Rifter', '2019', 'Red');
Insert into cars (idCars, vin, manufacturer, model, year, color)
values(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White');
Insert into cars (idCars, vin, manufacturer, model, year, color)
values(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver');
Insert into cars (idCars, vin, manufacturer, model, year, color)
values(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
Insert into cars (idCars, vin, manufacturer, model, year, color)
values(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

Insert into invoices 
values(0, '852399038', '22-08-2018', '0', '1', '3','0', '1', '3' );
Insert into invoices 
values(1, '731166526', '31-12-2018', '3', '0', '5','3', '0', '5' );
Insert into invoices 
values(2, '271135104', '22-01-2019', '2', '2', '7','2', '2', '7' );

BONUS

update customers
set email= 'ppicasso@gmail.com'
where idCustomers= 0



