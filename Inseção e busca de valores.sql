INSERT ALUNO VALUES (0, 'João Guilherme', '12312312312', 'Rua São José'),
                    (0, 'Maria Luísa', '45645645645', 'Rua Flores'),
                    (0, 'Bruno Henrique', '78978978978', 'Rua Santo Antônio'),
                    (0, 'Gabriela Dias', '23423423443', 'Rua São José'),
                    (0, 'Vitor Ferreira', '67567567557', 'Rua Sete de Setembro');

SELECT * FROM ALUNO;

INSERT CURSO VALUES (0, 'Administração', 'A DISTÂNCIA'),
                    (0, 'Engenharia Civil', 'PRESENCIAL'),
                    (0, 'Sistemas de Informação', 'A DISTÂNCIA');

SELECT * FROM CURSO;

INSERT PROFESSOR VALUES (0, 'Luís Carlos', '99988877700', 'R$ 1.200,00', '40 Horas', 1),
                        (0, 'Fernando Gomes', '11122233300', 'R$ 1.400,00', '48 Horas', 2),
                        (0, 'Carla Vieira', '44455566600', 'R$ 1.200,00', '40 Horas', 3);

SELECT * FROM PROFESSOR;

INSERT MATRICULA VALUES (0, 1, 2, '2019-02-14'),
						(0, 2, 3, '2019-02-14'),
                        (0, 3, 1, '2020-04-26'),
                        (0, 4, 2, '2020-06-17'),
                        (0, 5, 3, '2021-07-10');

SELECT * FROM MATRICULA;

SELECT M.IDMATRICULA, M.DT_MATRIC, A.NM_ALUNO, C.NM_CURSO FROM ALUNO A
JOIN MATRICULA M
ON A.IDALUNO = M.IDMATRICULA
JOIN CURSO C
ON C.IDCURSO = M.CURSOID
ORDER BY M.IDMATRICULA;
