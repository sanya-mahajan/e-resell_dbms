-- CREATE AD

CREATE OR REPLACE PROCEDURE CREATE_AD (
    p_product_id IN INTEGER,
    p_seller_id IN INTEGER
) AS
    l_ad_id INTEGER;
BEGIN
    -- LET AD_ID=19001
    INSERT INTO ADS (AD_ID, P_ID, SELLER_ID, CREATED_AT, VIEWS)
    VALUES (19001, p_product_id, p_seller_id, SYSDATE, 0) 
    RETURNING AD_ID INTO l_ad_id;

    
    DBMS_OUTPUT.PUT_LINE('New ad created with ID ' || l_ad_id);
    
END;

/

    
BEGIN

 CREATE_AD(14,9);

END;
/


--DELETE AD
CREATE OR REPLACE PROCEDURE delete_ad(
    p_ad_id IN INTEGER
) IS
BEGIN
    DELETE FROM ADS WHERE AD_ID = p_ad_id;
END;
/
BEGIN

 delete_ad(19001);

END;
/

--PLACE ORDER

CREATE OR REPLACE PROCEDURE place_order
(
    p_ad_id IN ADS.AD_ID%TYPE,
    p_amount IN ORDERS.AMOUNT%TYPE,
    p_buyer_id IN ORDERS.BUYER_ID%TYPE
)
AS
    v_status_id STATUS.STATUS_ID%TYPE;
    v_order_id ORDERS.O_ID%TYPE;
BEGIN
    -- INSERT O_ID =2424 
    SELECT STATUS_ID INTO v_status_id FROM STATUS WHERE STATUS = 'PLACED';
    
    INSERT INTO ORDERS (O_ID, AD_ID, AMOUNT, ORDERDATE, STATUS_ID, BUYER_ID)
    VALUES (2424, p_ad_id, p_amount, SYSDATE, v_status_id, p_buyer_id)
    RETURNING O_ID INTO v_order_id;
    
    
    DBMS_OUTPUT.PUT_LINE('Order placed successfully. Order ID: ' || v_order_id);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error placing order: ' || SQLERRM);
END;
/
    BEGIN
place_order(104,5700,5);
    END;
/


--CANCEL ORDER

CREATE OR REPLACE PROCEDURE cancel_order(
    p_order_id IN INTEGER
) IS
BEGIN
    UPDATE ORDERS SET STATUS_ID = (select STATUS_ID from STATUS where STATUS='CANCELLED') WHERE O_ID = p_order_id; 
END;
/
    BEGIN
    cancel_order(2424);
    END;
/



--DISPLAY DELIVERY STATUS
CREATE OR REPLACE FUNCTION delivery_status(
    p_order_id IN INTEGER
) RETURN VARCHAR2 IS
    p_status VARCHAR2(100);
BEGIN
    SELECT STATUS INTO p_status FROM STATUS WHERE STATUS_ID = (SELECT STATUS_ID FROM ORDERS WHERE O_ID = p_order_id);
    RETURN p_status;
END;
/

--DISPLAY AVAILABLE CATEGORIES
CREATE OR REPLACE FUNCTION available_categories RETURN SYS_REFCURSOR IS
    p_categories SYS_REFCURSOR;
BEGIN
    OPEN p_categories FOR SELECT DISTINCT CATEGORY FROM PRODUCT;
    RETURN p_categories;
END;
/
