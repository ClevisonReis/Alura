SELECT * FROM [TABELA DE CLIENTES]
SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = '�gua Santa'

DECLARE @LIMITE_MAXIMO FLOAT, @LIMITE_ATUAL FLOAT
DECLARE @BAIRRO VARCHAR(20)

SET @BAIRRO = '�gua Santa'
SET @LIMITE_MAXIMO = 50000
SELECT @LIMITE_ATUAL = SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO
IF @LIMITE_MAXIMO <= (SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO)
BEGIN
   PRINT 'Valor estourou. N�o � poss�vel abrir novos cr�ditos'
END
ELSE
BEGIN
   PRINT 'Valor n�o estourou. � poss�vel abrir novos cr�ditos'
END






declare @limite_maximo float
declare @limite_atual float
declare @bairro varchar(20)

set @bairro = 'Jardins'
set @limite_maximo = 500000
--select @limite_atual = SUM(limite_de_credito) from CLIENTES where BAIRRO = @bairro

if @limite_maximo <= (select SUM(limite_de_credito) from CLIENTES where BAIRRO = @bairro)
begin
print 'Valor estourou. N�o � poss�vel abrir novos cr�ditos'
end

else
begin
print 'Valor n�o estourou. � poss�vel abrir novos cr�ditos.'
end

