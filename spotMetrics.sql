create database spotmetrics;
use spotmetrics;

create table sensores(
idSensor int primary key auto_increment,
Modelo varchar(10),
localizacao  varchar(50)
); 

insert into sensores(Modelo, localizacao) values
("TRC5000", "23°33'34.8'S  46°39'48.6'W"),
("TRC5000", "23°33'36.3'S 46°39'44.1'W"),
("TRC5000", "23°33'39.7'S 46°39'40.9'W"); -- TABELA DE MODELO E LOCALIDADE DOS SENSORES ONDE SERÃO CAPTADAS A INFORMACOES
select*from sensores; 

create table dados (
idDado int primary key,
idSensor int,
fluxo_pessoas int,
Horarios datetime
); -- TABELA DE DADOS CAPTADOS PELOS SENSORES

insert into dados (idDado, idSensor, fluxo_pessoas, Horarios) values -- DADO 1 DO SENSOR 1
 (1, 1, 560, '2023-10-12 13:30:20');
insert into dados (idDado, idSensor, fluxo_pessoas, Horarios) values -- DADO 1 DO SENSOR 2
(1, 2, 320, "2023-10-12 14:20:00");
insert into dados (idDado, idSensor, fluxo_pessoas, Horarios) values -- DADO 1 DO SENSOR 3 
(1, 3, 220, "2023-10-12 15:30:00");

insert into dados (idDado, idSensor, fluxo_pessoas, Horarios) values -- DADO 2 DO SENSOR 1
(2, 1, 210, "2023-10-12 15:12:00");
insert into dados (idDado,idSensor, fluxo_pessoas, Horarios) values -- DADO 2 DO SENSOR 2
(2, 2, 220, "2023-10-12 15:40:00");
insert into dados (idDado, idSensor, fluxo_pessoas, Horarios) values -- DADO 2 DO SENSOR 3
(2, 3, 120, "2023-10-12 15:30:00");

create table Cadastro (
idCliente int primary key auto_increment,
Nome_da_Empresa varchar(40),
CNPJ varchar(20),
Matrix_da_Empresa varchar(40)
);

insert into cadastro (Nome_da_Empresa, CNPJ, Matrix_da_Empresa) values
('LivUp', '22.252.582/0001-00', 'São Paulo');

select * from sensores;
select * from dados;
select * from cadastro;
