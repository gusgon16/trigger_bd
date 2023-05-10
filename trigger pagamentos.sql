CREATE TABLE CONTA
(CODIGO INT PRIMARY KEY IDENTITY,
DATA DATETIME,
SALDO_FINAL NUMERIC(10,2) )
CREATE TABLE PAGTO
(CODIGO INT PRIMARY KEY IDENTITY,
DATA DATETIME,
TIPO CHAR(1),
VALOR NUMERIC(10,2)
)
 
 CREATE TRIGGER tr_pagamento on PAGTO
 FOR INSERT 
 AS
 declare @data datetime
 declare @tipo char(1)
 declare @valor numeric(10,2)
 declare @saldo numeric(10,2)

 select @data = getdate()

 IF (@tipo = 'c')
 BEGIN
 UPDATE CONTA
 set DATA = @data,
 SALDO_FINAL = SALDO_FINAL + @VALOR
 END
 IF (@tipo = 'd')
 BEGIN
 SELECT @saldo = SALDO_FINAL-@valor
 FROM CONTA
 IF(@saldo < 0)
 BEGIN
 PRINT 'SALDO VAI FICAR NEGATIVO!'
 UPDATE CONTA
 set DATA = @data,
 SALDO_FINAL = SALDO_FINAL - @VALOR
 END





