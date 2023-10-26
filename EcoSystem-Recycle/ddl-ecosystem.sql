CREATE DATABASE bd_ecosystem; 

USE bd_ecosystem;

CREATE TABLE tb_tipo_usuario(
id BINARY(16) NOT NULL,
tipo_usuario TINYINT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_endereco(
id BINARY(16) NOT NULL,
logradouro VARCHAR(255),
numero VARCHAR(255),
bairro VARCHAR(255),
cidade VARCHAR(255),
estado VARCHAR(255),
cep VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_usuario(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
genero VARCHAR(255),
cnpj VARCHAR(255),
cpf VARCHAR(255),
senha VARCHAR(255) NOT NULL,
telefone VARCHAR(255),
id_tipo_usuario BINARY(16),
id_endereco BINARY(16),
PRIMARY KEY (id),
FOREIGN KEY (id_tipo_usuario) REFERENCES tb_tipo_usuario (id),
FOREIGN KEY (id_endereco) REFERENCES tb_endereco(id)
);





