
SELECT * FROM [TABELA DE PRODUTOS]

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM = 'PET'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] = 4.555

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] > 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] < 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] <= 4.555

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] >= 4.555

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM <= 'Lata'

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM <> 'Lata'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] <> 4.555

SELECT * FROM TABELA_DE_VENDEDORES WHERE DATA_ADMISSAO LIKE '%2016%'

SELECT * FROM TABELA_DE_VENDEDORES WHERE LEFT(DATA_ADMISSAO, 4) >= 2016

SELECT * FROM [TABELA DE VENDEDORES] WHERE YEAR([DATA ADMISS�O]) >= 2016