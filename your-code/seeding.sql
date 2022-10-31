use cars;

insert into cars (VIN, Manufacturer, Model, Year, Color)
values (1245968732, 'TOYOTA', 'Yaris', 2020, 'Blue');

insert into cars (VIN, Manufacturer, Model, Year, Color)
values (1453120897, 'TOYOTA', 'Auris', 2021, 'White');

insert into cars (VIN, Manufacturer, Model, Year, Color)
values (1379001158, 'TOYOTA', 'CHR', 2021, 'Grey');

insert into cars (VIN, Manufacturer, Model, Year, Color)
values (1166880249, 'TOYOTA', 'Yaris', 2022, 'Red');

insert into salespersons (ID, Name)
values (0112, 'Raúl González');

insert into salespersons (ID, Name)
values (0081, 'Marta Sánchez');

insert into salespersons (ID, Name)
values (0009, 'Sancho Panza');

insert into salespersons (ID, Name)
values (0100, 'Fernando Fernández');

insert into customers (ID, Name, `Phone number`, Email, Adress, City, Province, Country, `Postal code`)
values (04005, 'Alicia Pérez', 612587469, 'aliciaperez@gmail.com', 'Calle Blanca Paloma 6', 'Madrid', 'Madrid', 'España', 28052);

insert into customers (ID, Name, `Phone number`, Email, Adress, City, Province, Country, `Postal code`)
values (04006, 'Pedro Sánchez', 614785236, 'pedrosanchez@gmail.com', 'Calle Arganzuela 19', 'Madrid', 'Madrid', 'España', 28051);

insert into customers (ID, Name, `Phone number`, Email, Adress, City, Province, Country, `Postal code`)
values (04007, 'Ruth Lorenzo', 666123888, 'ruthlorenzo@gmail.com', 'Calle Méndez Álvaro 147', 'Madrid', 'Madrid', 'España', 28053);

insert into invoices (ID, cars_VIN, salespersons_ID, Customers_ID)
values (0001, 1166880249, 0112, 04005);

insert into invoices (ID, cars_VIN, salespersons_ID, Customers_ID)
values (0002, 1379001158, 0009, 04006);

