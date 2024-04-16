drop database if exists escola;

create database escola;

use escola;

create table alunos (
	id int not null auto_increment,
	nome varchar(255) not null,
	dt_nascimento date not null,
	endereco varchar(80) not null,
	ra int not null unique,
	primary key(id)
);

create table professores (
	id int not null auto_increment,
	nome varchar(255),
	especialidade varchar(80) not null,
	grau_academico varchar(60) not null,
	primary key(id)
);

create table disciplinas (
	id int not null auto_increment,
	nome varchar(60) not null,
	rd int not null unique,
	professores_id int not null,
	primary key(id),
	constraint fk_professores_disciplinas foreign key (professores_id) references professores (id)
);

create table notas (
	id int not null auto_increment,
	nota decimal(18,1),
	alunos_id int not null,
	disciplinas_id int not null,
	primary key(id),
	constraint fk_alunos_notas foreign key (alunos_id) references alunos (id),
	constraint fk_disciplinas_notas foreign key (disciplinas_id) references disciplinas (id)
);

create table registro_alunos_disciplinas (
    alunos_id int not null,
    disciplinas_id int not null,
	primary key(alunos_id, disciplinas_id),
	constraint fk_alunos_registro_alunos_disciplinas foreign key (alunos_id) references alunos (id),
	constraint fk_disciplinas_registro_alunos_disciplinas foreign key (disciplinas_id) references disciplinas (id)
);

-- Inserção de dados na tabela de alunos --
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('a aluno', '2006-01-01', 'Rua 1', 1001);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('b aluno', '2007-02-02', 'Rua 2', 1002);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('c aluno', '2006-03-03', 'Rua 3', 1003);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('d aluno', '2007-04-04', 'Rua 4', 1004);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('e aluno', '2006-05-05', 'Rua 5', 1005);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('f aluno', '2007-06-06', 'Rua 6', 1006);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('g aluno', '2006-07-07', 'Rua 7', 1007);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('h aluno', '2007-08-08', 'Rua 8', 1008);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('i aluno', '2006-09-09', 'Rua 9', 1009);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('j aluno', '2007-10-10', 'Rua 10', 1010);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('k aluno', '2006-11-11', 'Rua 11', 1011);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('l aluno', '2007-12-12', 'Rua 12', 1012);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('m aluno', '2006-11-21', 'Rua 13', 1013);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('n aluno', '2007-10-20', 'Rua 14', 1014);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('o aluno', '2006-09-19', 'Rua 15', 1015);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('p aluno', '2007-08-18', 'Rua 16', 1016);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('q aluno', '2006-07-17', 'Rua 17', 1017);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('r aluno', '2007-06-16', 'Rua 18', 1018);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('s aluno', '2006-05-15', 'Rua 19', 1019);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('t aluno', '2006-04-14', 'Rua 20', 1020);
INSERT INTO alunos (nome, dt_nascimento, endereco, ra) VALUES ('u aluno', '2006-05-14', 'Rua 21', 1021);

select id, nome, dt_nascimento, endereco, ra from alunos a;

-- Inserção de dados na tabela de professores --
INSERT INTO professores (nome, especialidade, grau_academico) VALUES (null, 'Inglês', 'Mestrado');
INSERT INTO professores (nome, especialidade, grau_academico) VALUES ('Anderson', 'Geografia', 'Mestrado');
INSERT INTO professores (nome, especialidade, grau_academico) VALUES ('Michael', 'Matemática', 'Doutorado');


select id, nome, especialidade, grau_academico from professores p;

-- Inserção de dados na tabela de disciplinas --
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('Matemática', 0001, 3);
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('Química', 0002, 1);
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('Inglês', 0003, 1);
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('História', 0004, 3);
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('Geografia', 0005, 2);
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('Biologia', 0006, 2);
INSERT INTO disciplinas (nome, rd, professores_id) VALUES ('Física', 0007, 3);

select id, nome, rd, professores_id from disciplinas d;

-- Inserção de dados na tabela de notas --
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,1,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,2,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,3,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,4,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,5,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,6,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,7,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,8,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,9,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,10,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,11,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,12,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,13,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,14,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,15,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,16,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,17,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,18,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,19,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,20,1);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,1,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,2,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,3,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,4,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,5,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,6,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,7,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,8,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,9,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,10,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,11,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,12,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,13,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,14,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,15,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (4.2,16,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,17,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,18,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,19,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,20,2);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,1,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,2,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,3,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,4,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,5,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,6,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,7,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,8,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,9,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,10,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,11,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,12,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,13,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,14,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,15,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,16,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,17,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,18,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,19,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,20,3);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,1,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,2,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (10.0,3,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,4,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,5,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,6,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,7,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,8,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,9,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,10,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,11,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,12,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,13,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,14,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,15,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,16,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,17,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,18,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,19,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,20,4);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,1,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,2,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,3,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,4,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,5,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,6,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,7,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,8,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,9,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,10,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,11,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,12,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,13,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,14,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,15,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,16,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,17,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,18,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,19,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (null, 20,5);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,1,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,2,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,3,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,4,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,5,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,6,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,7,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,8,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,9,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,10,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,11,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,12,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,13,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,14,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,15,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,16,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,17,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,18,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,19,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (null, 20,6);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,1,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,2,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,3,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,4,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,5,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,6,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,7,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,8,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,9,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,10,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,11,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,12,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,13,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,14,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,15,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (6.9,16,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (7.9,17,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (8.9,18,7);
INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,19,7);
-- INSERT INTO notas (nota, alunos_id, disciplinas_id) VALUES (9.9,21,7); //usado para provar o exercício 30

select nota, alunos_id, disciplinas_id from notas n;

-- Inserção de dados na tabela de registro de alunos e disciplina --
insert into registro_alunos_disciplinas  (alunos_id,disciplinas_id) 
select a.id as alunos_id, d.id as disciplinas_id
from alunos a cross join disciplinas d;
select nota, alunos_id, disciplinas_id from notas;

select alunos_id, disciplinas_id from registro_alunos_disciplinas r;



--  UPDATE --
update alunos set dt_nascimento = '2007-04-14' where id = 20 and nome = 'aluno 20';

select id, nome, dt_nascimento, endereco, ra from alunos a;

-- DELETE --
-- delete from notas where alunos_id = 20;
-- delete from alunos where ra = 1020;

-- EXERCÍCIO 1 --
select a.id, a.nome, a.ra, d.nome as disciplina from alunos a inner join registro_alunos_disciplinas r on a.id = r.alunos_id 
inner join disciplinas d on r.disciplinas_id = d.id where d.nome like '%Matemática%';

-- EXERCÍCIO 2 --
select p.nome, p.grau_academico as Grau_Acadêmico, d.nome as disciplina from professores p join disciplinas d on p.id = d.professores_id where d.nome like '%Inglês%';

-- EXERCÍCIO 3 --
select a.id, a.nome, a.ra, d.nome as disciplina from alunos a inner join registro_alunos_disciplinas r on a.id = r.alunos_id 
inner join disciplinas d on r.disciplinas_id = d.id;

-- EXERCÍCIO 4 --
select a.id, a.nome, a.ra, d.nome as disciplina, n.nota from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id
join disciplinas d on r.disciplinas_id = d.id join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
where d.nome like '%Matemática%';

-- EXERCÍCIO 5 --
select a.id, a.nome, a.ra, d.nome as disciplina, n.nota from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id
join disciplinas d on r.disciplinas_id = d.id join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
where n.nota >= 7.0;

-- EXERCÍCIO 6 --

select a.id, a.nome, a.ra, d.nome as disciplina, n.nota, d.rd as Código_Disciplina from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id
join disciplinas d on r.disciplinas_id = d.id join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
where d.nome like '%Matemática%' and n.nota >= 7.0;

-- EXERCÍCIO 7 --
select a.id, a.nome, a.ra, d.nome as disciplina, n.nota, d.rd as Código_Disciplina from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id
join disciplinas d on r.disciplinas_id = d.id join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
where d.nome like '%Matemática%' and n.nota > 7.0;

-- EXERCÍCIO 8 --
select a.id, a.nome, a.ra, d.nome as disciplina, n.nota from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id
join disciplinas d on r.disciplinas_id = d.id join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
where d.nome like '%Matemática%' and n.nota < 8.0;

-- EXERCÍCIO 9 --
select a.id, a.nome, a.ra, a.dt_nascimento from alunos a where year(a.dt_nascimento) > 2000;
-- || --
select a.id, a.nome, a.ra, a.dt_nascimento from alunos a where a.dt_nascimento >= '2001-01-01';

-- EXERCÍCIO 10 --
select d.nome as disciplina, ifnull(n.nota, 0) as nota from disciplinas d left join notas n on n.disciplinas_id = d.id;

-- EXERCÍCIO 11 --
select a.nome as aluno, d.nome as disciplina from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id join disciplinas d
on r.disciplinas_id = d.id where d.nome = 'Geografia';

-- EXERCÍCIO 12 --
select a.nome as aluno, p.nome as professor, p.grau_academico, d.nome as disciplina from alunos a join registro_alunos_disciplinas r 
on a.id = r.alunos_id  join disciplinas d on r.disciplinas_id = d.id join
professores p on d.professores_id = p.id where p.grau_academico = 'Doutorado';

-- EXERCÍCIO 13 --
select d.nome as disciplina_nome, ifnull(p.nome, 'Nenhum professor registrado') as professor_nome 
from disciplinas d left join professores p on d.professores_id = p.id;

-- EXERCÍCIO 14 --
select count(a.id) as total_alunos_MAT from alunos a join registro_alunos_disciplinas r on a.id = r.alunos_id
join disciplinas d on r.disciplinas_id = d.id join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
where d.nome = 'Química' and n.nota is not null;

-- EXERCÍCIO 15 --
select sum(n.nota) as soma_total_notas from notas n where n.disciplinas_id in ( select d.id from disciplinas d 
where d.nome = 'Física');

-- EXERCÍCIO 16 --
select max(n.nota) as maior_nota_historia from notas n where n.disciplinas_id in ( select d.id from disciplinas d 
where d.nome = 'História');

-- EXERCÍCIO 17 --
select min(n.nota) as menor_nota_quimica from notas n where n.disciplinas_id in ( select d.id from disciplinas d 
where d.nome = 'Química');

-- EXERCÍCIO 18 --
select avg (n.nota) as media_biologia from notas n where n.disciplinas_id in ( select d.id from disciplinas d 
where d.nome = 'Biologia');
-- || --
select avg (n.nota) as media_biologia from notas n inner join disciplinas d on n.disciplinas_id = d.id  where d.nome = 'Biologia';

-- EXERCÍCIO 19 --
select  d.nome as disciplina, count(a.id) AS total_alunos from disciplinas d left join registro_alunos_disciplinas r 
on d.id = r.disciplinas_id left join notas n on r.alunos_id = n.alunos_id and r.disciplinas_id = n.disciplinas_id
left join alunos a on r.alunos_id = a.id where n.nota is not null group by d.nome;

-- EXERCÍCIO 20 --
select sum(n.nota) as soma_total_notas from notas n;

-- EXERCÍCIO 21 --
select max(n.nota) as maior_nota from notas n;

-- EXERCÍCIO 22 --
select min(n.nota) as maior_nota from notas n;

-- EXERCÍCIO 23 --
select avg(n.nota) as media from notas n;

-- EXERCÍCIO 24 --
select d.nome as disciplina, avg(n.nota) as media from notas n join registro_alunos_disciplinas r on n.alunos_id = r.alunos_id 
and n.disciplinas_id = r.disciplinas_id join disciplinas d on r.disciplinas_id = d.id group by d.nome;

-- EXERCÍCIO 25 --
select d.nome as disciplina, a.nome as aluno, avg(n.nota) as media from notas n join registro_alunos_disciplinas r 
on n.alunos_id = r.alunos_id and n.disciplinas_id = r.disciplinas_id join alunos a on r.alunos_id = a.id join disciplinas d 
on r.disciplinas_id = d.id group by d.nome, a.nome order by d.nome, a.nome asc;

-- EXERCÍCIO 26 --
select d.nome as disciplina, a.nome as aluno, avg(n.nota) as media from notas n join registro_alunos_disciplinas r 
on n.alunos_id = r.alunos_id and n.disciplinas_id = r.disciplinas_id join alunos a on r.alunos_id = a.id join disciplinas d 
on r.disciplinas_id = d.id group by d.nome, a.nome order by d.nome asc, avg(n.nota) desc;

-- EXERCÍCIO 27 --
select n.alunos_id, n.nota, a.nome from notas n inner join disciplinas d on n.disciplinas_id = d.id inner join alunos a 
on n.alunos_id = a.id where d.nome = 'História' order by nota limit 5;

-- EXERCÍCIO 28 --
select a.nome AS aluno, avg(n.nota) as media from notas n join registro_alunos_disciplinas r on n.alunos_id = r.alunos_id 
and n.disciplinas_id = r.disciplinas_id join alunos a on r.alunos_id = a.id join disciplinas d on r.disciplinas_id = d.id
where d.nome = 'Química' group by a.nome, d.nome order by media desc limit 3;

-- EXERCÍCIO 29 --
select d.nome as disciplina, a.nome as aluno, avg(n.nota) as media from notas n join registro_alunos_disciplinas r 
on n.alunos_id = r.alunos_id and n.disciplinas_id = r.disciplinas_id join alunos a on r.alunos_id = a.id join disciplinas d 
on r.disciplinas_id = d.id group by d.nome, a.nome order by media desc limit 10;

-- EXERCÍCIO 30 --
select count(distinct n.alunos_id) as total_active_students from notas n join registro_alunos_disciplinas r on n.alunos_id = r.alunos_id 
and n.disciplinas_id = r.disciplinas_id join alunos a on r.alunos_id = a.id;