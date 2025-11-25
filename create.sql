-- Tive que fazer no VSCODE, porque não consegui instalar o MySql




CREATE DATABASE EmpresaLimoeza;
USE EmpresaLimppeza;

CREATE TABLE CLIENTE  (
	CodCli INT PRIMARY KEY,
    NomeCli VARCHAR(80) NOT NULL,
    FoneCli VARCHAR(20),
    EndCli DECIMAL(120),
    LimCredCli DECIMAL(10,2),
    StatusCli VARCHAR(20)
);

CREATE TABLE CATEGORIA (
    CodCat INT PRIMARY KEY,
    DesCat VARCHAR(120) NOT NULL
);

CREATE TABLE PRODUTO (
    CodProd INT PRIMARY KEY,
    NomeProd VARCHAR(80) NOT NULL,
	PrecoProd DECIMAL(10,2) NOT NULL,
    CodCat INT,
    FOREIGN KEY (CodCli) REFERENCES CATEGORIAS(CodCat) 
);

CREATE TABLE PEDIDO (
    NumPed INT,
    CodProd INT,
    QtdeImProd INT,
    PRIMARY KEY (NumPed, CodProd),
    FOREIGN KEY (NumPed) REFERENCES PEDIDO(NumPed),
    FOREIGN KEY (CodProd) REFERENCES PRODUTO(CodProd)
    );
    
    CREATE TABLE PEDIDOPRODUTO (
        NumPed INT,
        CodProd INT,
        QtdeIntemProd INT,
        PRIMARY KEY (NumPed, CodProd),
        FOREIGN KEY (CodPed) REFERENCES PEDIDO(NumPed),
        FOREIGN KEY (CodProd) REFERENCES PRODUTO(CodProd)
        );


