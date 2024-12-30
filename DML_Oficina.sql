--DML
INSERT INTO cliente
VALUES (1, 'Ana Fernandes', 'email@email.com', 'Rua das Flores', '20', '','Jd. Primavera', 'São Paulo', 'SP', '05858000','1199111-9999'),
       (2, 'Bianca Santos','emailDois@email.com', 'Rua das Camélias', '10', '','Jd. Primavera', 'São Paulo', 'SP', '05757000','11992222-9999'),
	   (3, 'Caio Silva','emailTres@email.com', 'Rua das Dores', '25', '','Jd. dos Remédios', 'Salvador', 'BA', '05858000','119333-9999');
go

INSERT INTO MECANICO
VALUES (1, 'João Souza', 'funileiro'),
	   (2, 'Carlos Mendonça', 'pintor');

go

INSERT INTO servico
VALUES (1, 'Troca de óleo', 100.00, 1);

go
INSERT INTO peca
VALUES (1,'Filtro de óleo', 30.50, 'Bosch', 10),
	   (2,'Vela de ignição', 15.00, 'NGK', 20),
	   (3,'Pastilha de freio', 50.00, 'Brembo', 15);
go
INSERT INTO veiculo 
VALUES (1,'Fiat', 'Uno', 'ABC1234', '54321ABC', 1),
       (2,'Volkswagen', 'Gol', 'DEF5678', '87654DEF', 2),
       (3,'Chevrolet', 'Onix', 'GHI9012', '12345GHI', 3);

go

INSERT INTO ORDEM_SERVICO 
VALUES (1,'2023-11-20','2023-11-25','Aberto', 250.00, 1, 2, 1, 2),
       (2,'2023-11-21', '2023-11-26','Em andamento', 150.00, 2, 3, 1, 1),
       (3,'2023-11-22', '2023-11-27', 'Concluído', 300.00, 3, 1, 1, 2);

go
--query
select *
from peca;

INSERT INTO ORDEM_SERVICO 
VALUES (4,'2023-11-20','2023-11-25','Em andamento', 250.00, 1, 2, 1, 2);
go
