--TRIGGER INCREASE VIEWCOUNT ON DISPLAY OF AD

CREATE OR REPLACE TRIGGER increase_viewcount
AFTER UPDATE OF VIEWS ON ADS
FOR EACH ROW
BEGIN
    UPDATE PRODUCT SET VIEWS = VIEWS + 1 WHERE P_ID = :NEW.P_ID;
END;

--DISPLAY TO USER WHEN STATUS CHANGES
CREATE OR REPLACE TRIGGER display_delivery_status
AFTER UPDATE OF STATUS_ID ON ORDERS
FOR EACH ROW
    DECLARE
    NS STATUS.STATUS%TYPE;
BEGIN
  IF :OLD.STATUS_ID <> :NEW.STATUS_ID THEN
    SELECT STATUS INTO NS FROM STATUS WHERE STATUS_ID = :NEW.STATUS_ID;
    DBMS_OUTPUT.PUT_LINE('Delivery status changed to ' || NS);
  END IF;
END;
/

SELECT * FROM ORDERS;
UPDATE ORDERS SET STATUS_ID = 693 WHERE O_ID = 2;
