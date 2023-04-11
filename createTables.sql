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
                    ORDERTIME TIME[0],
                    STATUS_ID INTEGER,
                    BUYER_ID INTEGER);
