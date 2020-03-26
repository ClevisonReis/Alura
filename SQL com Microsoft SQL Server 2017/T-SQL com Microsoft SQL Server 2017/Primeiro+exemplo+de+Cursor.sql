
DECLARE @NOME VARCHAR(200)
DECLARE CURSOR1 CURSOR FOR SELECT TOP 4 NOME FROM [TABELA DE CLIENTES]
OPEN CURSOR1
FETCH NEXT FROM CURSOR1 INTO @NOME
WHILE @@FETCH_STATUS = 0
BEGIN
   PRINT @NOME
   FETCH NEXT FROM CURSOR1 INTO @NOME
END


------------------------------------

declare @limite_credito int
declare @credito_total int

declare cursorcredito cursor for select limite_de_credito from CLIENTES
SET @credito_total = 0
open cursorcredito

fetch next from cursorcredito into @limite_credito
while @@FETCH_STATUS = 0
begin
SET @credito_total = @credito_total + @limite_credito
fetch next from cursorcredito into @limite_credito
end

CLOSE cursorcredito
DEALLOCATE cursorcredito
PRINT @credito_total