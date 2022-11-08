-- comentário
-- a linha abaixo cria um banco de dados
create database dbinfoX;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco de intruções abaixo cria uma tabela
CREATE TABLE tbUsuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- o comando abaixo descreve a tabela
describe tbUsuarios;
-- a linha abaixo insere dados na tabela (CRUD)
-- create -> insert
insert into tbUsuarios(iduser, usuario, fone, login, senha)
values(1, 'Daniel Cortez', '9999-9999','danielcortez','daniel123');

-- a linha abaixo exibe os dados da tabela
-- read -> select
SELECT * FROM tbUsuarios;

insert into tbUsuarios(iduser, usuario, fone, login, senha)
values(2, 'Ismeire Cortez', '9999-8888','ismeirecortez','ismeirel123');
insert into tbUsuarios(iduser, usuario, fone, login, senha)
values(3, 'Any Cortez', '8888-8888','anycortez','any123');

-- a linha abaixo modifica dados na tabela
-- update -> update
update tbUsuarios set fone = '1111-1111' where iduser =2;

-- a linha abaixo apaga dados na tabela
-- delete -> delete
delete from tbUsuarios where iduser = 3;

create table tbClientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fone varchar(50) not null,
emailcli varchar(50)
);

describe tbClientes;

insert into tbClientes(nomecli, endcli, fone, emailcli)
values('Amanda Santos','Rua Asc','9999-9999','amanda@email.com');

select * from tbclientes;

create table tbOS(
os int primary key auto_increment,
-- a linha abaixo após efetuado um inset puxa a data e a hora do acontecimento. 
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
-- na linha abaixo o valor decimal esta formatado para 10 casas decimais e 2 após a vírgula
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbClientes(idcli)
);

describe tbos;

insert into tbos(equipamento, defeito, servico, tecnico, valor, idcli)
values('Notebook', 'Não liga', 'Troca da fonte',' Zé', 20.00, 1);

select * from tbos;

-- o código abaixo traz informações de duas tabelas
select
o.os,equipamento,defeito,servico,valor,
c.nomecli,fone
from tbos as O
inner join tbclientes as c
on(o.idcli = c.idcli);




