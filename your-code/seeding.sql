insert into cars (VIN, manufacturer, model, year, color)
values (0000, 'Volkswagen',  'Tiguan', 2019, 'Blue');

insert into cars (VIN, manufacturer, model, year, color)
values (0001, 'Peugeot',  'Rifter', 2019, 'Blue');
insert into cars (VIN, manufacturer, model, year, color)
values (0002, 'Ford',  'Fusion', 2018, 'Blue');
insert into cars (VIN, manufacturer, model, year, color)
values (0003, 'Toyota',  'RAV4', 2018, 'Blue');
insert into cars (VIN, manufacturer, model, year, color)
values (0004, 'Volvo',  'V60', 2019, 'Blue');
insert into cars (VIN, manufacturer, model, year, color)
values (0005, 'Volvo',  'V60 Cross Country', 2019, 'Blue');

insert into customers (customer_ID, name, phone_number, email, address, city, `state/province`, country)
values (10001, 'Pablo Picasso',  '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain');
insert into customers (customer_ID, name, phone_number, email, address, city, `state/province`, country)
values (20001, 'Hedy Lamarr',  '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria');
insert into customers (customer_ID, name, phone_number, email, address, city, `state/province`, country)
values (30001, 'Katherine Johnson',  '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States');

insert into salespersons (staff_ID, name, store)
values (00001, 'Petey Cruiser',  'Madrid');
insert into salespersons (staff_ID, name, store)
values (00002, 'Anna Sthesia',  'Barcelona');
insert into salespersons (staff_ID, name, store)
values (00003, 'Paul Molive',  'Berlin');
insert into salespersons (staff_ID, name, store)
values (00004, 'Paige Turner',  'Paris');
insert into salespersons (staff_ID, name, store)
values (00005, 'Bob Frapples',  'Mimia');
insert into salespersons (staff_ID, name, store)
values (00006, 'Walter Melon',  'Mexico City');
insert into salespersons (staff_ID, name, store)
values (00007, 'Shonda Leer',  'Amsterdam');
insert into salespersons (staff_ID, name, store)
values (00008, 'Petey Cruiser',  'São Paulo');

insert into invoices (invoice_ID, invoice_number, date, cars_VIN, Customers_customer_ID, Salespersons_staff_ID)
values (0, 852399038, '2018-08-22', 0000, 10001, 2);
insert into invoices (invoice_ID, invoice_number, date, cars_VIN, Customers_customer_ID, Salespersons_staff_ID)
values (1, 731166526, '2018-12-31', 0003, 20001, 4);
insert into invoices (invoice_ID, invoice_number, date, cars_VIN, Customers_customer_ID, Salespersons_staff_ID)
values (2, 271135104, '2019-01-22', 0002, 30001, 6);




