
CREATE PROCEDURE BuscaPorEntidades @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
  SELECT [CPF] AS IDENTIFICADOR, [NOME] AS DESCRITOR, 
  [BAIRRO] AS BAIRRO FROM [TABELA DE CLIENTES]
ELSE IF @ENTIDADE = 'VENDEDORES'
  SELECT [MATRICULA] AS IDENTIFICADOR, [NOME] AS DESCRITOR, 
  [BAIRRO] AS BAIRRO FROM [TABELA DE VENDEDORES]
END

EXEC BuscaPorEntidades @ENTIDADE = 'CLIENTES'
EXEC BuscaPorEntidades @ENTIDADE = 'VENDEDORES'

-----------------------------------------


CREATE PROCEDURE BuscaPorEntidadesCompleta @ENTIDADE AS VARCHAR(10)
AS
BEGIN
IF @ENTIDADE = 'CLIENTES'
  SELECT CPF AS IDENTIFICADOR, NOME AS DESCRITOR, BAIRRO AS BAIRRO FROM CLIENTES

ELSE IF @ENTIDADE = 'VENDEDORES'
  SELECT MATRICULA AS IDENTIFICADOR, NOME AS DESCRITOR, BAIRRO AS BAIRRO FROM VENDEDORES

ELSE IF @ENTIDADE = 'PRODUTOS'
  SELECT CODIGO AS IDENTIFCADOR, DESCRITOR AS DESCRITOR, SABOR AS SABOR FROM PRODUTOS
END

EXEC BuscaPorEntidadesCompleta @ENTIDADE = 'CLIENTES'
EXEC BuscaPorEntidadesCompleta @ENTIDADE = 'VENDEDORES'
EXEC BuscaPorEntidadesCompleta @ENTIDADE = 'PRODUTOS'

