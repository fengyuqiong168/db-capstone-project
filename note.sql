--- Populate the `Customers` Table SUCCESS
INSERT INTO Customers (CustomerID, FullName, PhoneNumber)
VALUES
(1, "Vanessa McCarthy", 0757536378),
(2, "Marcos Romero", 0757536379), 
(3, "Hiroki Yamane", 0757536376), 
(4, "Anna Iversen", 0757536375), 
(5, "Diana Pinto", 0757536374),
(6, 'Kishan Hughes', 387986345), 
(7, 'Indira Moncada', 334567243), 
(8, 'Mosha Setsile', 315642597), 
(9, 'Laura Mills', 300842509), 
(10, 'Henrik Kreida', 358208983), 
(11, 'Millicent Blou', 347898755),
(12, "Altay Ayhan", 0757636378),      
(13, "Jane Murphy", 0753536379),      
(14, "Laurina Delgado", 0754536376),      
(15, "Mike Edwards", 0757236375),     
(16, "Karl Pederson", 0757936374);


--- Populate the `Bookings` Table
INSERT INTO Bookings 
(BookingID, TableNumber, GuestFirstName, GuestLastName, NumberOfGuests, BookingDate, EmployeeID, CustomerID) 
VALUES 
(01, 2, 'Anna', 'Iversen', 5, '2023-09-25 19:00:00', 08, 4),  
(02, 5, 'Kishan', 'Hughes', 2,  '2023-09-25 19:00:00', 08, 6), 
(03, 7, 'Vanessa', 'McCarthy', 2, '2023-09-25 15:00:00', 11, 1), 
(04, 1, 'Marcos', 'Romero', 1, '2023-09-25 17:30:00', 10, 2), 
(05, 5, 'Hiroki', 'Yamane', 7, '2023-10-24 18:30:00', 09, 3),
(06, 1, 'Diana', 'Pinto', 3, '2023-10-14 20:00:00', 11, 5), 
(07, 2, 'Indira', 'Moncada', 7, '2023-10-12 18:30:00', 09, 7),
(08, 4, 'Mosha', 'Setsile', 2, '2023-10-04 20:00:00', 10, 8),
(09, 5, 'Laura', 'Mills', 3, '2023-10-14 18:30:00', 08, 9),
(10, 6, 'Henrik', 'Kreida', 4, '2023-10-24 20:00:00', 09, 10),
(11, 7, 'Millicent', 'Blou', 2, '2023-10-25 18:30:00', 10, 11),
(12, 3, 'Altay', 'Ayhan', 3, '2023-10-24 18:30:00', 11, 12),
(13, 2, 'Jane', 'Murphy', 1, '2023-10-20 18:00:00', 10, 13),
(14, 6, 'Laurina', 'Delgado', 4, '2023-09-28 18:30:00', 09, 14),
(15, 7, 'Mike', 'Edwards', 3, '2023-09-30 19:30:00', 08, 15),
(16, 3, 'Karl', 'Pederson', 2, '2023-10-14 18:00:00', 09, 16);

--- Populate the `Orders` Table
INSERT INTO Orders 
(OrderID, TableNumber, MenuID, BookingID, Quantity, BillAmount)
VALUES
(1, 2, 1, 01, 5, 286),
(2, 1, 2, 04, 1, 37),
(3, 5, 2, 02, 2, 137),
(4, 7, 3, 03, 2, 75);


--- Populate the `Menus` Table 
--- Note: i should use composite primary key
INSERT INTO Menus (MenuID, ItemID, Cuisine)
VALUES
(1, 1, 'Greek'),
(1, 7, 'Greek'), 
(1, 10, 'Greek'), 
(1, 13, 'Greek'), 
(2, 3, 'Italian'), 
(2, 9, 'Italian'), 
(2, 12, 'Italian'), 
(2, 15, 'Italian'), 
(3, 5, 'Turkish'), 
(3, 17, 'Turkish'), 
(3, 11, 'Turkish'), 
(3, 16, 'Turkish');

--- Populate the `MenuItems` Table SUCCESS
INSERT INTO MenuItems (ItemID, Name, Type, Price) 
VALUES
(1,'Olives','Starters', 5), 
(2,'Flatbread','Starters', 5),
(3, 'Minestrone', 'Starters', 8), 
(4, 'Tomato bread','Starters', 8), 
(5, 'Falafel', 'Starters', 7), 
(6, 'Hummus', 'Starters', 5), 
(7, 'Greek salad', 'Main Courses', 15), 
(8, 'Bean soup', 'Main Courses', 12), 
(9, 'Pizza', 'Main Courses', 15), 
(10,'Greek yoghurt','Desserts', 7), 
(11, 'Ice cream', 'Desserts', 6),
(12, 'Cheesecake', 'Desserts', 4), 
(13, 'Athens White wine', 'Drinks', 25), 
(14, 'Corfu Red Wine', 'Drinks', 30), 
(15, 'Turkish Coffee', 'Drinks', 10), 
(16, 'Turkish Coffee', 'Drinks', 10), 
(17, 'Kabasa', 'Main Courses', 17);

--- Populate the `Delivery` Table
INSERT INTO OrderDeliveryStatus 
(DeliveryID, DeliveryStatus, TableNumber, OrderID)
VALUES
(1, 'Delivered', 7, 4),
(2, 'In progress', 2, 1),
(3, 'In progress', 5, 3),
(4, 'Delivered', 1, 2);


--- Populate the `Employees` Table SUCCESS
INSERT INTO Employees (EmployeeID, FullName, Role, ContactNumber, Email, AnnualSalary)
VALUES 
(01,'Mario Gollini','Manager', 351258074,'Mario.g@littlelemon.com','$70,000'),
(02,'Adrian Gollini','Assistant Manager', 351474048,'Adrian.g@littlelemon.com','$65,000'),
(03,'Giorgos Dioudis','Head Chef', 351970582,'Giorgos.d@littlelemon.com','$50,000'),
(04,'Fatma Kaya','Assistant Chef', 351963569,'Fatma.k@littlelemon.com','$45,000'),
(05,'Seamus Hogan', 'Assistant Chef', 351478025, 'Seamus.h@littlelemon.com','$45,000'), 
(06,'Thomas Eriksson', 'Assistant Chef', 351475058, 'Thomas.e@littlelemon.com','$45,000'), 
(07,'Simon Tolo', 'Assistant Chef', 351930582,'Simon.t@littlelemon.com','$45,000'), 
(08,'Elena Salvai','Head Waiter', 351074198,'Elena.s@littlelemon.com','$43,000'),
(09,'Francesca Soffia', 'Waiter', 351258569,'Francesca.s@littlelemon.com','$40,000'), 
(10,'Emily Sierra', 'Waiter', 351083098,'Emily.s@littlelemon.com','$40,000'), 
(11,'Maria Carter', 'Waiter', 351022508,'Maria.c@littlelemon.com','$40,000'),
(12,'John Millar','Receptionist', 351584508,'John.m@littlelemon.com','$35,000'),
(13,'Rick Griffin', 'Receptionist', 351478458,'Rick.G@littlelemon.com','$35,000');