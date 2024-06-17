use secao04;

-- =========================== --

create table tipo_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY (codigo_tipo) references tipo_produto(codigo)
);

-- =========================== --

INSERT INTO tipo_produto (descricao) VALUES ('computadores');
INSERT INTO tipo_produto (descricao) VALUES ('impressora');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', 1200, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', 1100, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Argox', 1300, 7);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('HP M1212fn', 800, 7);

-- =========================== --

select * from produtos;

select * from tipo_produto;



