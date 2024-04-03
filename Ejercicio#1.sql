SELECT * FROM clientes WHERE region is NULL

UPDATE clientes SET region = "-" WHERE region is NULL