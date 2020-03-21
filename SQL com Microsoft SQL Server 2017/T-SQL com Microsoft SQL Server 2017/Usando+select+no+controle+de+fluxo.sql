SELECT * FROM [TABELA DE CLIENTES]
SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = 'Água Santa'

DECLARE @LIMITE_MAXIMO FLOAT, @LIMITE_ATUAL FLOAT
DECLARE @BAIRRO VARCHAR(20)

SET @BAIRRO = 'Água Santa'
SET @LIMITE_MAXIMO = 50000
SELECT @LIMITE_ATUAL = SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO
IF @LIMITE_MAXIMO <= (SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO)
BEGIN
   PRINT 'Valor estourou. Não é possível abrir novos créditos'
END
ELSE
BEGIN
   PRINT 'Valor não estourou. É possível abrir novos créditos'
END






declare @limite_maximo float
declare @limite_atual float
declare @bairro varchar(20)

set @bairro = 'Jardins'
set @limite_maximo = 500000
--select @limite_atual = SUM(limite_de_credito) from CLIENTES where BAIRRO = @bairro

if @limite_maximo <= (select SUM(limite_de_credito) from CLIENTES where BAIRRO = @bairro)
begin
print 'Valor estourou. Não é possível abrir novos créditos'
end

else
begin
print 'Valor não estourou. É possível abrir novos créditos.'
end

