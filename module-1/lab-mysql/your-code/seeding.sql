insert into Cars (VIN,ManufacturerModel,YearCars,Color) 
values ("3K096I98581DHSNUP","Volkswagen","2019-01-01","Blue"),("ZM8G7BEUQZ97IH46V", "Peugeot","2019-01-01","Red"),("ZM8G7BEUQZ97IH46V", "Peugeot","2019-01-01","Red");

insert into Customers(CustomerID,NameCustomer,PhoneNumber,Email) 
values (10001,"Pablo Picasso","+34 636 17 63 82",""), (20001,"Abraham Lincoln","+1 305 907 7086",""), (30001, "Napoléon Bonaparte","+33 1 79 75 40 00","");

insert into salespersons(StaffID,NameSales,Store)
values(00001,"Petey Cruiser","Madrid"),(00002,"Anna Sthesia","Barcelona"),(00003,"Paul Molive","Berlin"),(00004,"Gail Forcewind","Paris"), (00005,"Paige Turner","Mimia");

insert into invoices(InvoicesNumber, DateInvoices, Car,Customer,Staff)
values(852399038, "2018-08-22", 0, 1, 3);

/*
| 5 | 00006 | Bob Frapples | Mexico City |
| 6 | 00007 | Walter Melon | Amsterdam |
| 7 | 00008 | Shonda Leer | São Paulo |*/

/*
| 1 | 731166526 | 31-12-2018 | 3 | 0 | 5 |
| 2 | 271135104 | 22-01-2019 | 2 | 2 | 7 |*/