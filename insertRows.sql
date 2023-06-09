--Product table values
INSERT INTO PRODUCT VALUES(1, 'T-shirt','Good','pic.com','Clothing',299,1);
INSERT INTO PRODUCT VALUES(2, 'Laptop','Like new','abc.com','Electronics',29999,1);
INSERT INTO PRODUCT VALUES(3, 'Levis jeans','Good','ssd.com','Clothing',799,1);
INSERT INTO PRODUCT VALUES(4, 'Lab Coat','Okay','lab.com','Clothing',249,2);
INSERT INTO PRODUCT VALUES(5, 'Bay-Blade','Excellent','toy.com','Toys',199,1);
INSERT INTO PRODUCT VALUES(6, 'Wired Mouse','Good','m.in','Electronics',499,5);
INSERT INTO PRODUCT VALUES(7, 'Keyboard','Nice','k.in','Electronics',1099,1);
INSERT INTO PRODUCT VALUES(8, 'Monitor','Unboxed','hehe.com','Electronics',7999,1);
INSERT INTO PRODUCT VALUES(9, 'Tool-set','Like new','tool.in','Utility',2799,1);
INSERT INTO PRODUCT VALUES(10, 'Let us C++','Year old','book.in','Books',399,1);
INSERT INTO PRODUCT VALUES(11, 'Harry Potter','2 years old','pic.com','Book',799,2);
INSERT INTO PRODUCT VALUES(12, 'Steam iron','Unboxed','zap.com','Appliance',1299,1);
INSERT INTO PRODUCT VALUES(13, 'Shorts','Like new','ss.com','Clothing',499,2);
INSERT INTO PRODUCT VALUES(14, 'IPhone 8','128GB','apple.com','Electronics',20999,1);
INSERT INTO PRODUCT VALUES(15, 'Bagpack','Good','gen.com','Utiity',999,2);


--User table values
INSERT INTO USERS VALUES(1,'Amit','Kumar','akumar1@gmail.com',9874536271);
INSERT INTO USERS VALUES(2,'Bhavya','Mittal','bmit@yahoo.com',9756381430);
INSERT INTO USERS VALUES(3,'Chirag','Singla','csingla1@thapar.edu',8966745362);
INSERT INTO USERS VALUES(4,'Dhananjay','Singh','dsingh@outlook.com',9867856473);
INSERT INTO USERS VALUES(5,'Eli','Roth','elisgreat1@gmail.com',9987500845);
INSERT INTO USERS VALUES(6,'Farhan','Qureshi','farhan2@yahoo.com',8900065784);
INSERT INTO USERS VALUES(7,'Garima','Arora','arima1@gmail.com',9806444837);
INSERT INTO USERS VALUES(8,'Harpreet','Sodhi','sodhi23@gmail.com',9800756223);
INSERT INTO USERS VALUES(9,'Ishaan','Soin','ishaan@live.com',9800657899);
INSERT INTO USERS VALUES(10,'Jai','Dalmotra','jaydal@yahoo.com',8989076453);
INSERT INTO USERS VALUES(11,'Kalki','Koechlin','kalki@gmail.com',7890453329);
INSERT INTO USERS VALUES(12,'Lakshay','Gupta','gupay1@gmail.com',8769504956);
INSERT INTO USERS VALUES(13,'Manan','Singla','singmanan@yahoo.com',9087789564);
INSERT INTO USERS VALUES(14,'Nupur','Arora','nupur23@gmail.com',7895085647);
INSERT INTO USERS VALUES(15,'Ojas','Gautam','ojasg@gmail.com',8907564783);
INSERT INTO USERS VALUES(16,'Paras','Gupta','pgu1@thapar.edu',8721314156);
INSERT INTO USERS VALUES(17,'Quill','Minar','delhie@gmail.com',6789567483);
INSERT INTO USERS VALUES(18,'Rajesh','Mehta','rajesh@gmail.com',8975647392);
INSERT INTO USERS VALUES(19,'Bhavya','Mittal','mittal@gmail.com',7890765678);
INSERT INTO USERS VALUES(20,'Dhananjay','Singh','singg@gmail.com',8907567498);


--AD Table Values
INSERT INTO ADS VALUES(101,1,1,TO_DATE('12-01-2023','DD-MM-RR'),5);
INSERT INTO ADS VALUES(102,2,2,TO_DATE('24-02-2023','DD-MM-RR'),10);
INSERT INTO ADS VALUES(103,3,4,TO_DATE('16-01-2023','DD-MM-RR'),11);
INSERT INTO ADS VALUES(104,4,3,TO_DATE('22-03-2023','DD-MM-RR'),15);
INSERT INTO ADS VALUES(105,5,9,TO_DATE('08-04-2023','DD-MM-RR'),4);
INSERT INTO ADS VALUES(106,6,5,TO_DATE('12-02-2023','DD-MM-RR'),56);
INSERT INTO ADS VALUES(107,7,1,TO_DATE('11-01-2023','DD-MM-RR'),6);
INSERT INTO ADS VALUES(108,8,10,TO_DATE('12-01-2023','DD-MM-RR'),5);
INSERT INTO ADS VALUES(109,9,12,TO_DATE('16-04-2023','DD-MM-RR'),10);
INSERT INTO ADS VALUES(110,10,15,TO_DATE('18-03-2023','DD-MM-RR'),23);
INSERT INTO ADS VALUES(111,11,8,TO_DATE('29-03-2023','DD-MM-RR'),12);
INSERT INTO ADS VALUES(112,12,7,TO_DATE('07-04-2023','DD-MM-RR'),17);

--STATUS TABLE VALUES
INSERT INTO STATUS VALUES(691,'DELIVERED');
INSERT INTO STATUS VALUES(692,'PLACED');
INSERT INTO STATUS VALUES(693,'IN-TRANSIT');
INSERT INTO STATUS VALUES(694,'CANCELLED');

--ORDER TABLE VALUES
INSERT INTO ORDERS VALUES(1001,101,299,TO_DATE('11-02-2023','DD-MM-RR'),691,1);
INSERT INTO ORDERS VALUES(1002,112,1299,TO_DATE('23-03-2023','DD-MM-RR'),692,3);
INSERT INTO ORDERS VALUES(1003,109,2799,TO_DATE('02-04-2023','DD-MM-RR'),693,5);
INSERT INTO ORDERS VALUES(1004,104,249,TO_DATE('14-01-2023','DD-MM-RR'),694,4);
INSERT INTO ORDERS VALUES(1005,105,199,TO_DATE('09-03-2023','DD-MM-RR'),692,12);
INSERT INTO ORDERS VALUES(1006,107,1099,TO_DATE('22-02-2023','DD-MM-RR'),693,11);
INSERT INTO ORDERS VALUES(1007,108,7999,TO_DATE('20-01-2023','DD-MM-RR'),694,16);
INSERT INTO ORDERS VALUES(1008,110,399,TO_DATE('06-04-2023','DD-MM-RR'),691,8);
INSERT INTO ORDERS VALUES(1009,103,799,TO_DATE('11-03-2023','DD-MM-RR'),691,5);
INSERT INTO ORDERS VALUES(1010,106,499,TO_DATE('21-01-2023','DD-MM-RR'),694,11);

--USER_REVIEWS TABLE VALUES
INSERT INTO USER_REVIEWS VALUES(1,'Really satisfied');
INSERT INTO USER_REVIEWS VALUES(4,'Could not have been better');
INSERT INTO USER_REVIEWS VALUES(5,'Mast ekdum');
INSERT INTO USER_REVIEWS VALUES(17,'Worst Experience');
INSERT INTO USER_REVIEWS VALUES(11,'That is what she said');
INSERT INTO USER_REVIEWS VALUES(12,'How the turntables');
INSERT INTO USER_REVIEWS VALUES(8,'Bazzinga');
INSERT INTO USER_REVIEWS VALUES(15,'Did not like it.');
INSERT INTO USER_REVIEWS VALUES(9,'Meh');
INSERT INTO USER_REVIEWS VALUES(10,'Nice');

--DELIVERY_DETAILS TABLE VALUES
INSERT INTO DELIVERY_DETAILS VALUES (1001,'331, Model Town',TO_DATE('12-03-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1002,'2048, Bilaspur',TO_DATE('01-05-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1003,'21, Chandigarh',TO_DATE('23-03-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1004,'46, Patiala',TO_DATE('11-04-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1005,'678, Punjabi Bagh',TO_DATE('09-02-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1006,'564, Pitampura',TO_DATE('18-01-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1007,'23, Rohini',TO_DATE('16-03-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1008,'36, China Town',TO_DATE('07-04-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1009,'12/24 Karol Bagh',TO_DATE('24-03-2023','DD-MM-RR'));
INSERT INTO DELIVERY_DETAILS VALUES (1010,'221B, Baker Street',TO_DATE('16-03-2023','DD-MM-RR'));

--CARD_DETAILS TABLE VALUES
INSERT INTO CARD_DETAILS VALUES(1,4785930204,'HDFC');
INSERT INTO CARD_DETAILS VALUES(2,4030985219,'AXIS');
INSERT INTO CARD_DETAILS VALUES(9,4502956784,'SBI');
INSERT INTO CARD_DETAILS VALUES(7,4009675894,'ICICI');
INSERT INTO CARD_DETAILS VALUES(6,4096785940,'HDFC');
INSERT INTO CARD_DETAILS VALUES(12,4330578594,'PNB');
INSERT INTO CARD_DETAILS VALUES(15,4567678421,'CITI');
INSERT INTO CARD_DETAILS VALUES(18,4690983422,'KOTAK');
INSERT INTO CARD_DETAILS VALUES(20,5890327560,'SBI');
INSERT INTO CARD_DETAILS VALUES(16,4563216780,'AXIS');
