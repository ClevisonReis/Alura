CREATE DATABASE SUCOS_VENDAS_01

CREATE DATABASE SALES_VENDAS_02
ON ( NAME = SUCO_VENDAS_DAT,  
    FILENAME = 'C:\TEMP\DATA\SALES_VENDAS_02.mdf',  --O arquivo que representa os dados serão criados nesse diretório
    SIZE = 10,  --O tamanho inicial será 10 megabyte
    MAXSIZE = 50,  --Terá o tamanho máximo de 50 megabyte
    FILEGROWTH = 5 )  --Crescerá de 5 em 5 megabyte
LOG ON  
( NAME = SUCOS_VENDAS_LOG,  
    FILENAME = 'C:\TEMP\DATA\SALES_VENDAS_02.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB )
