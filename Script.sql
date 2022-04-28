USE UNIVERSIDADEBD;

CREATE TABLE ALUNO (
	    IDALUNO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            NM_ALUNO VARCHAR(45) NOT NULL,
            CPF_ALUNO VARCHAR(11) NOT NULL,
            END_ALUNO VARCHAR(75)
);

CREATE TABLE CURSO (
            IDCURSO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            NM_CURSO VARCHAR(45) NOT NULL,
            TP_CURSO ENUM('PRESENCIAL', 'A DISTÂNCIA') NOT NULL DEFAULT 'A DISTÂNCIA'
);

CREATE TABLE PROFESSOR (
            IDPROF INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            NM_PROF VARCHAR(45) NOT NULL,
            CPF_PROF VARCHAR(11) NOT NULL,
            SLR_PROF VARCHAR(15) NOT NULL,
            CH_PROF VARCHAR(15) NOT NULL,
            CURSO_ID INT NOT NULL
);

ALTER TABLE PROFESSOR ADD CONSTRAINT FK_CURS FOREIGN KEY (CURSO_ID) REFERENCES CURSO(IDCURSO);

CREATE TABLE MATRICULA (
            IDMATRICULA INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            ALUNOID INT NOT NULL,
            CURSOID INT NOT NULL
);

ALTER TABLE MATRICULA ADD COLUMN DT_MATRIC DATE NOT NULL;
ALTER TABLE MATRICULA ADD CONSTRAINT FK_ALUNO FOREIGN KEY (ALUNOID) REFERENCES ALUNO(IDALUNO);
ALTER TABLE MATRICULA ADD CONSTRAINT FK_CURSO FOREIGN KEY (CURSOID) REFERENCES CURSO(IDCURSO);