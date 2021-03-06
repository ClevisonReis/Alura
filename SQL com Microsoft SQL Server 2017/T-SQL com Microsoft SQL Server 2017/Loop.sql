
DECLARE @LIMITE_MINIMO INT, @LIMITE_MAXIMO INT, @LIMITE_BREAK INT

SET @LIMITE_MINIMO = 1
SET @LIMITE_MAXIMO = 10
SET @LIMITE_BREAK = 12

WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
   PRINT @LIMITE_MINIMO
   SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1
   IF @LIMITE_MINIMO = @LIMITE_BREAK
   BEGIN
      PRINT 'Saindo por causa do BREAK'
      BREAK
   END
END



--------------------

SELECT [DATA], COUNT([DATA]) FROM NOTAS
GROUP BY [DATA]

--------------------

DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT
SET @DATAINICIAL = '20180510'
SET @DATAFINAL = '20180520'
WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @NUMNOTAS = COUNT(*) FROM NOTAS
        WHERE DATA = @DATAINICIAL
    PRINT CONVERT(VARCHAR(10), @DATAINICIAL) + ' --> ' 
        + CONVERT(VARCHAR(10), @NUMNOTAS)
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END

