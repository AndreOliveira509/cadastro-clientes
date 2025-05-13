CREATE DATABASE cadastro_clientes;

USE cadastro_clientes;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO clientes (nome, cidade, estado, cep, telefone) VALUES
('Renato Lima', 'São Paulo', 'SP', '01001-000', '(11) 98888-1111'),
('Beatriz Azevedo', 'Rio de Janeiro', 'RJ', '20040-000', '(21) 97777-2222'),
('Fábio Duarte', 'Belo Horizonte', 'MG', '30190-000', '(31) 96666-3333'),
('Lúcia Mendes', 'Porto Alegre', 'RS', '90010-000', '(51) 95555-4444'),
('Bruno Teixeira', 'Salvador', 'BA', '40026-000', '(71) 94444-5555'),
('Renata Barbosa', 'Brasília', 'DF', '70040-000', '(61) 93333-6666'),
('Eduarda Melo', 'Fortaleza', 'CE', '60010-000', '(85) 92222-7777'),
('Alessandro Torres', 'Curitiba', 'PR', '80010-000', '(41) 91111-8888'),
('Helena Prado', 'Recife', 'PE', '50010-000', '(81) 90000-9999'),
('Marcelo Viana', 'Manaus', 'AM', '69005-000', '(92) 98877-0000'),
('Natália Brito', 'Belém', 'PA', '66010-000', '(91) 97766-1111'),
('Tiago Rezende', 'Goiânia', 'GO', '74010-000', '(62) 96655-2222'),
('Aline Cunha', 'Vitória', 'ES', '29010-000', '(27) 95544-3333'),
('Felipe Antunes', 'Florianópolis', 'SC', '88010-000', '(48) 94433-4444'),
('Cristiane Lopes', 'Natal', 'RN', '59010-000', '(84) 93322-5555'),
('Rafael Pinto', 'Campo Grande', 'MS', '79002-000', '(67) 92211-6666'),
('Monique Neves', 'Cuiabá', 'MT', '78005-000', '(65) 91100-7777'),
('Gabriel Rocha', 'João Pessoa', 'PB', '58010-000', '(83) 90099-8888'),
('Tatiana Alves', 'Teresina', 'PI', '64000-000', '(86) 89988-9999'),
('Leonardo Bastos', 'Aracaju', 'SE', '49010-000', '(79) 88877-0000');
