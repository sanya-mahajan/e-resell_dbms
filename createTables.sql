CREATE TABLE PRODUCT(P_ID INTEGER PRIMARY KEY,
                     NAME VARCHAR(20),
                     CONDITION VARCHAR(100),
                     IMAGE VARCHAR(50),
                     CATEGORY VARCHAR(30),
                     PRICE INTEGER,
                     QUANTITY INTEGER);
                     
CREATE TABLE USERS (U_ID INTEGER PRIMARY KEY,
    FIRSTNAME VARCHAR(15),
    LASTNAME VARCHAR(15),
    EMAIL VARCHAR(20),
    PHONE INTEGER CHECK (LENGTH(PHONE)=10)
    );    
    
CREATE TABLE ADS(
    AD_ID INTEGER PRIMARY KEY,
    P_ID INTEGER  REFERENCES PRODUCT(P_ID),
    SELLER_ID INTEGER  REFERENCES USERS(U_ID),
    CREATED_AT DATE,
    VIEWS INTEGER
        
);                     
                     
                     
CREATE TABLE ORDERS(O_ID INTEGER PRIMARY KEY,
                    AD_ID INTEGER REFERENCES ADS(AD_ID),
                    AMOUNT INTEGER,
                    ORDERDATE DATE,
                    STATUS_ID INTEGER REFERENCES STATUS(STATUS_ID),
                    BUYER_ID INTEGER REFERENCES USERS(U_ID));                     
                     
                 


CREATE TABLE USER_REVIEWS(
    U_ID INTEGER NOT NULL REFERENCES USERS(U_ID),
    REVIEW VARCHAR(200)
);

CREATE TABLE STATUS(STATUS_ID INTEGER PRIMARY KEY,
                    STATUS VARCHAR(100));

CREATE TABLE DELIVERY_DETAILS(
    O_ID INTEGER REFERENCES ORDERS(O_ID),
    ADDRESS VARCHAR(100),
    EXPECTED_ARRIVAL DATE
    
);
CREATE TABLE CARD_DETAILS(
    U_ID INTEGER REFERENCES USERS(U_ID),
    CARD_NO INTEGER UNIQUE,
    BANK_NAME VARCHAR(200)
);
