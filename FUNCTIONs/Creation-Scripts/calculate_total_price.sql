CREATE  FUNCTION `calculate_total_price`(price DECIMAL(10,2), quantity INT, tax_rate DECIMAL(5,2)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SET total = price * quantity * (1 + tax_rate);
    RETURN total;
END