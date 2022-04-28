insert aluno values (0, 'josé', '12345678900', 'rua a', 1),
					(0, 'lucas', '12345678901', 'rua b', 2),
                    (0, 'bruna', '12345678902', 'rua c', 2);

insert curso values (0, 'pedagogia', 'PRESENCIAL', 2),
                    (0, 'analise de sistemas', 'A DISTANCIA', 1);

INSERT PROFESSOR VALUES (0, 'JORGE', '12345678903', 'R$ 1300,00', '40 HORAS'),
                        (0, 'MARIA', '12345678904', 'R$ 1300,00', '40 HORAS');

INSERT matricula VALUES (0, '2017-04-12', 1, 1),
                        (0, '2018-06-14', 2, 2),
                        (0, '2018-06-16', 3, 2);

SELECT * FROM matricula;

select * from aluno a
join matricula m
on a.idAluno = m.idMatricula;

select a.idAluno, a.Aluno_NM, m.Aluno_idAluno, m.Curso_idCurso from aluno a
join matricula m
on a.idAluno = m.idMatricula;    


select m.idMatricula, m.Matricula_DT ,a.Aluno_NM, c.Curso_NM from aluno a
join matricula m
on a.idAluno = m.idMatricula
join curso c
on c.idCurso = m.Curso_idCurso;





                    