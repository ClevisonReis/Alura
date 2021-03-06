
DECLARE @MATRICULA VARCHAR(5), @NOME VARCHAR(100), @PERCENTUAL FLOAT, @DATA DATE, @FERIAS BIT
DECLARE @BAIRRO VARCHAR(100)

SET @MATRICULA = '00240'
SET @NOME = 'Cl�udia Rodrigues'
SET @PERCENTUAL = 0.10
SET @DATA = '20120312'
SET @FERIAS = 1
SET @BAIRRO = 'Jardins'

INSERT INTO [TABELA DE VENDEDORES] (MATRICULA, NOME, [PERCENTUAL COMISS�O]
, [DATA ADMISS�O], [DE FERIAS], BAIRRO)
VALUES
(@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO)

SELECT * FROM [TABELA DE VENDEDORES]

----------------------------------------
DECLARE @Cliente VARCHAR(10)
DECLARE @Idade INT
DECLARE @DataNascimento DATE
DECLARE @Custo FLOAT
SET @Cliente = 'Jo�o'
SET @Idade = 10
SET @DataNascimento = '20170110'
SET @Custo = 10.23
PRINT @Cliente
PRINT @Idade
PRINT @DataNascimento
PRINT @Custo
-----------------------------------------

DECLARE @NUMNOTAS VARCHAR(10)

SET @NUMNOTAS = '2018-05-15'

SELECT * FROM NOTAS WHERE [DATA] = @NUMNOTAS

--PRINT @NUMNOTAS

DECLARE @NUMNOTAS_1 INT
SELECT @NUMNOTAS_1 = COUNT(*) FROM NOTAS
    WHERE DATA = '20180515'
PRINT @NUMNOTAS_1

-----------------------------------------

DECLARE @MATRICULA VARCHAR(5)
DECLARE @NOME VARCHAR(100)
DECLARE @COMISSAO FLOAT
DECLARE @DATA DATE
DECLARE @FERIAS BIT
DECLARE @BAIRRO VARCHAR(100)

SET @MATRICULA  = '00239'
SET @NOME 	    = 'Jos� Mattos'
SET @COMISSAO   = 0.10
SET @DATA 	    = '20100120'
SET @FERIAS     = 1
SET @BAIRRO		= 'Meier'

INSERT INTO VENDEDORES (MATRICULA, NOME, BAIRRO, COMISSAO, DATA_ADMISSAO, FERIAS)
VALUES (
@MATRICULA,
@NOME,
@BAIRRO,
@COMISSAO,
@DATA,
@FERIAS
)

SELECT * FROM VENDEDORES