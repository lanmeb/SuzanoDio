--CREATE DATABASE OficinaMecanica;
--use OficinaMecanica;

CREATE TABLE CLIENTE (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR,
    endereco VARCHAR(200),
    numero VARCHAR,
    complemento VARCHAR(45),
    bairro VARCHAR,
    cidade VARCHAR(50),
    estado VARCHAR(20),
    cep VARCHAR(20),
    telefone VARCHAR(25)
);
--ok

go

CREATE TABLE ORDEM_SERVICO(
    id_os INTEGER PRIMARY KEY,
	data_emissao DATE,
    data_conclusao DATE,
    estatus VARCHAR(50),
    valor_total FLOAT,
	id_veiculo INTEGER,
	id_peca INTEGER,
	id_servico INTEGER,
	id_mecanico INTEGER,
    FOREIGN KEY(id_veiculo) REFERENCES VEICULO(id_veiculo),
    FOREIGN KEY(id_peca) REFERENCES PECA(id_peca),
    FOREIGN KEY(id_servico) REFERENCES SERVICO(id_servico),
    FOREIGN KEY(id_mecanico) REFERENCES MECANICO(id_mecanico)

);
go
CREATE TABLE VEICULO (
    id_veiculo INTEGER PRIMARY KEY,
    marca VARCHAR(45),
    modelo VARCHAR(50),
    placa VARCHAR(50),
    numero_serie VARCHAR(50),
	id_cliente INTEGER
    FOREIGN KEY(id_cliente) REFERENCES CLIENTE(id_cliente)
);
go
CREATE TABLE PECA(
    id_peca INTEGER PRIMARY KEY,
    descricao VARCHAR(100),
    valor_unit FLOAT,
    fabricante VARCHAR(100),
    qtd INTEGER
);

go
CREATE TABLE SERVICO (
    id_servico INTEGER PRIMARY KEY,
    descricao VARCHAR(100),
    preco_servico FLOAT,
    qtd_servico INTEGER
	
);
go
CREATE TABLE MECANICO (
    id_mecanico INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(50),
    
);
go
ALTER TABLE cliente
ALTER COLUMN email VARCHAR(100);
go
/* esqci de defirnir a qtd de caracteres
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CLIENTE' AND COLUMN_NAME = 'numero';
*/
go
ALTER TABLE cliente
ALTER COLUMN numero VARCHAR(100);
ALTER TABLE cliente
ALTER COLUMN bairro VARCHAR(100);
