CREATE TABLE PRODUCT(P_ID INTEGER PRIMARY KEY,
                     NAME VARCHAR(20),
                     CONDITION VARCHAR(100),
                     IMAGE VARCHAR(50),
                     CATEGORY VARCHAR(30),
                     PRICE INTEGER,
                     QUANTITY INTEGER);

CREATE TABLE ORDERS(O_ID INTEGER PRIMARY KEY,
                    AD_ID INTEGER,
                    AMOUNT INTEGER,
                    ORDERDATE DATE,
                    STATUS_ID INTEGER,
                    BUYER_ID INTEGER);

CREATE TABLE USERS (U_ID INTEGER PRIMARY KEY,
    FIRSTNAME VARCHAR(15),
    LASTNAME VARCHAR(15),
    EMAIL VARCHAR(20),
    PHONE INTEGER CHECK (LENGTH(PHONE)=10)
    );                    
