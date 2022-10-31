USE ford;


#tabla cars
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES ('ZM8G7BEUQZ97IH46V','Volkswagen','Tiguan','2019','Blue');
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES ('3K096I98581DHSNUP','Peugeot','Rifter','2019','Red	');
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES ('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES ('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');
INSERT INTO cars (VIN, Manufacturer, Model, Year, Color) VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

#tabla customers

INSERT INTO customer VALUES ('10001','Pablo Picasso','+34 636 17 63 82',null,
								'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
INSERT INTO customer VALUES ('20001','Hedy Lamarr','+43 1 514442250',null,
								'	Weiglgasse 10','Viena','Vienna','Austria','1150');
INSERT INTO customer VALUES ('30001','Katherine Johnson','+1 202 358 0000',null,
								'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');
                                
#tabla salespersons

INSERT INTO salespersons VALUES ('00001','Petey Cruiser','Madrid');
INSERT INTO salespersons VALUES ('00002','Anna Sthesia','Barcelona');
INSERT INTO salespersons VALUES ('00003','Paul Molive','Berlin');
INSERT INTO salespersons VALUES ('00004','Gail Forcewind','Paris');
INSERT INTO salespersons VALUES ('00005','Paige Turner','Mimia');
INSERT INTO salespersons VALUES ('00006','Bob Frapples','Mexico City');
INSERT INTO salespersons VALUES ('00007','Walter Melonr','Amsterdam');
INSERT INTO salespersons VALUES ('00008','Shonda Leer','São Paulo');


#tabla invoices


INSERT INTO invoices VALUES ('852399038','2018-08-22',0, '20001', '00004');
INSERT INTO invoices VALUES ('731166526','2018-12-31',3, '10001', '00006');
INSERT INTO invoices VALUES ('271135104','2019-01-22',2, '30001', '00008');