Insert into cars (ID,VIN,Manufacturer,Model,Year,Color)
values (0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue’);
        
Insert into cars (ID,VIN,Manufacturer,Model,Year,Color)
values (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
Insert into cars (ID,VIN,Manufacturer,Model,Year,Color)
values (2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
Insert into cars (ID,VIN,Manufacturer,Model,Year,Color)
values (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver');
Insert into cars (ID,VIN,Manufacturer,Model,Year,Color)
values (4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
Insert into cars (ID,VIN,Manufacturer,Model,Year,Color)
values (5,'DAM41UDN3CHU2WVF6','Peugeot','V60 Cross Country',2019,'Gray');


Insert into Customers (Id,CustomerID,Name,Phone,Email,Address,City,State)
values (0,'10001','Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid');
Insert into Customers (Id,CustomerID,Name,Phone,Email,Address,City,State)
values (1,'20001','Hedy Lamarr','+43 1 514442250','-','Weiglgasse 10','Viena','Vienna');
Insert into Customers (Id,CustomerID,Name,Phone,Email,Address,City,State)
values (2,'30001','Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington');

Insert into Salespersons
values ('0','00001','Petey Cruiser','Madrid');
Insert into Salespersons
values ('1','00002','Anna Sthesia','Barcelona');
Insert into Salespersons
values ('2','00003','Paul Molive','Berlin');
Insert into Salespersons
values ('3','00004','Gail Forcewind','Paris');
Insert into Salespersons
values ('4','00005','Paige Turner','Mimia');
Insert into Salespersons
values ('5','00006','Bob Frapples','Mexico City');
Insert into Salespersons
values ('6','00007','Walter Melon','Amsterdam');   
Insert into Salespersons
values ('7','00008','Shonda Leer','São Paulo');


Insert into Invoices 
values (0,'852399038','22-08-2018',0,1,3);
Insert into Invoices
values (1,'731166526','31-12-2018',3,0,5);
Insert into Invoices
values (2,'271135104','22-01-2019',2,2,7);


Select * from Cars
Select * from Customers
Select * from Salespersons
Select * from Invoices
