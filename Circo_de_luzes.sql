/* Circo_de_luzes_modelo_logico: */

CREATE TABLE Funcionario (
    id_func INT,
    nome_func VARCHAR,
    salario_func DOUBLE,
    horario_func JSON,
    fk_telefone_func_telefone_func_PK VARCHAR,
    sexo VARCHAR,
    endereco_func VARCHAR,
    fk_email_email_PK VARCHAR,
    id_setor_saude INT,
    id_setor_rest INT,
    Funcionario_TIPO INT,
    CRM VARCHAR,
    COREM INT,
    id_clinico INT,
    id_Pediatra INT,
    id_cozinheiro INT,
    id_garcom INT,
    status_pedido VARCHAR,
    PRIMARY KEY (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
);

CREATE TABLE Palco (
    id_palco INT PRIMARY KEY
);

CREATE TABLE Mesa (
    id_mesa INT PRIMARY KEY
);

CREATE TABLE Mesa_do_cliente_Cliente (
    id_cliente INT PRIMARY KEY,
    Nome VARCHAR,
    Idade DATE,
    Pontos_fidelidade INT,
    fk_Mesa_id_mesa INT
);

CREATE TABLE Setor_evento (
    id_setor_evento INT,
    id_artista INT,
    Setor_evento_TIPO INT,
    fk_Palco_id_palco INT,
    PRIMARY KEY (id_setor_evento, id_artista)
);

CREATE TABLE Paciente (
    fk_Cliente_id_cliente INT PRIMARY KEY
);

CREATE TABLE telefone_func (
    telefone_func_PK VARCHAR NOT NULL PRIMARY KEY,
    telefone_func INT
);

CREATE TABLE email (
    email_PK VARCHAR NOT NULL PRIMARY KEY,
    email VARCHAR
);

CREATE TABLE Supervisiona (
    fk_Funcionario_id_func INT,
    fk_Funcionario_id_setor_saude INT,
    fk_Funcionario_id_setor_rest INT,
    fk_Funcionario_CRM VARCHAR,
    fk_Funcionario_COREM INT,
    fk_Funcionario_id_clinico INT,
    fk_Funcionario_id_Pediatra INT,
    fk_Funcionario_id_cozinheiro INT,
    fk_Funcionario_id_garcom INT,
    fk_Funcionario_id_func_ INT,
    fk_Funcionario_id_setor_saude_ INT,
    fk_Funcionario_id_setor_rest_ INT,
    fk_Funcionario_CRM_ VARCHAR,
    fk_Funcionario_COREM_ INT,
    fk_Funcionario_id_clinico_ INT,
    fk_Funcionario_id_Pediatra_ INT,
    fk_Funcionario_id_cozinheiro_ INT,
    fk_Funcionario_id_garcom_ INT,
    id_supervisor_enf INT PRIMARY KEY
);

CREATE TABLE Supervisiona (
    fk_Funcionario_id_func INT,
    fk_Funcionario_id_setor_saude INT,
    fk_Funcionario_id_setor_rest INT,
    fk_Funcionario_CRM VARCHAR,
    fk_Funcionario_COREM INT,
    fk_Funcionario_id_clinico INT,
    fk_Funcionario_id_Pediatra INT,
    fk_Funcionario_id_cozinheiro INT,
    fk_Funcionario_id_garcom INT,
    fk_Funcionario_id_func_ INT,
    fk_Funcionario_id_setor_saude_ INT,
    fk_Funcionario_id_setor_rest_ INT,
    fk_Funcionario_CRM_ VARCHAR,
    fk_Funcionario_COREM_ INT,
    fk_Funcionario_id_clinico_ INT,
    fk_Funcionario_id_Pediatra_ INT,
    fk_Funcionario_id_cozinheiro_ INT,
    fk_Funcionario_id_garcom_ INT,
    id_supervisor_med INT PRIMARY KEY
);

CREATE TABLE Supervisao_cozinha (
    fk_Funcionario_id_func INT,
    fk_Funcionario_id_setor_saude INT,
    fk_Funcionario_id_setor_rest INT,
    fk_Funcionario_CRM VARCHAR,
    fk_Funcionario_COREM INT,
    fk_Funcionario_id_clinico INT,
    fk_Funcionario_id_Pediatra INT,
    fk_Funcionario_id_cozinheiro INT,
    fk_Funcionario_id_garcom INT,
    fk_Funcionario_id_func_ INT,
    fk_Funcionario_id_setor_saude_ INT,
    fk_Funcionario_id_setor_rest_ INT,
    fk_Funcionario_CRM_ VARCHAR,
    fk_Funcionario_COREM_ INT,
    fk_Funcionario_id_clinico_ INT,
    fk_Funcionario_id_Pediatra_ INT,
    fk_Funcionario_id_cozinheiro_ INT,
    fk_Funcionario_id_garcom_ INT,
    id_supervisao_coz INT PRIMARY KEY
);

CREATE TABLE Supervisao_garcom (
    fk_Funcionario_id_func INT,
    fk_Funcionario_id_setor_saude INT,
    fk_Funcionario_id_setor_rest INT,
    fk_Funcionario_CRM VARCHAR,
    fk_Funcionario_COREM INT,
    fk_Funcionario_id_clinico INT,
    fk_Funcionario_id_Pediatra INT,
    fk_Funcionario_id_cozinheiro INT,
    fk_Funcionario_id_garcom INT,
    fk_Funcionario_id_func_ INT,
    fk_Funcionario_id_setor_saude_ INT,
    fk_Funcionario_id_setor_rest_ INT,
    fk_Funcionario_CRM_ VARCHAR,
    fk_Funcionario_COREM_ INT,
    fk_Funcionario_id_clinico_ INT,
    fk_Funcionario_id_Pediatra_ INT,
    fk_Funcionario_id_cozinheiro_ INT,
    fk_Funcionario_id_garcom_ INT,
    id_supervisao_gar INT PRIMARY KEY
);

CREATE TABLE Pedidos (
    fk_Funcionario_id_func INT,
    fk_Funcionario_id_setor_saude INT,
    fk_Funcionario_id_setor_rest INT,
    fk_Funcionario_CRM VARCHAR,
    fk_Funcionario_COREM INT,
    fk_Funcionario_id_clinico INT,
    fk_Funcionario_id_Pediatra INT,
    fk_Funcionario_id_cozinheiro INT,
    fk_Funcionario_id_garcom INT,
    id_pedido INT PRIMARY KEY
);

CREATE TABLE primeiros_socorros_Funcionario_Paciente (
    fk_Funcionario_id_func INT,
    fk_Funcionario_id_setor_saude INT,
    fk_Funcionario_id_setor_rest INT,
    fk_Funcionario_CRM VARCHAR,
    fk_Funcionario_COREM INT,
    fk_Funcionario_id_clinico INT,
    fk_Funcionario_id_Pediatra INT,
    fk_Funcionario_id_cozinheiro INT,
    fk_Funcionario_id_garcom INT,
    fk_Paciente_fk_Cliente_id_cliente INT
);

CREATE TABLE Ver_show (
    fk_Cliente_id_cliente INT,
    fk_Palco_id_palco INT
);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_2
    FOREIGN KEY (fk_telefone_func_telefone_func_PK)
    REFERENCES telefone_func (telefone_func_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_3
    FOREIGN KEY (fk_email_email_PK)
    REFERENCES email (email_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE Mesa_do_cliente_Cliente ADD CONSTRAINT FK_Mesa_do_cliente_Cliente_2
    FOREIGN KEY (fk_Mesa_id_mesa)
    REFERENCES Mesa (id_mesa);
 
ALTER TABLE Setor_evento ADD CONSTRAINT FK_Setor_evento_2
    FOREIGN KEY (fk_Palco_id_palco)
    REFERENCES Palco (id_palco)
    ON DELETE RESTRICT;
 
ALTER TABLE Paciente ADD CONSTRAINT FK_Paciente_2
    FOREIGN KEY (fk_Cliente_id_cliente)
    REFERENCES ??? (???);
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_2
    FOREIGN KEY (fk_Funcionario_id_func, fk_Funcionario_id_setor_saude, fk_Funcionario_id_setor_rest, fk_Funcionario_CRM, fk_Funcionario_COREM, fk_Funcionario_id_clinico, fk_Funcionario_id_Pediatra, fk_Funcionario_id_cozinheiro, fk_Funcionario_id_garcom)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_3
    FOREIGN KEY (fk_Funcionario_id_func_, fk_Funcionario_id_setor_saude_, fk_Funcionario_id_setor_rest_, fk_Funcionario_CRM_, fk_Funcionario_COREM_, fk_Funcionario_id_clinico_, fk_Funcionario_id_Pediatra_, fk_Funcionario_id_cozinheiro_, fk_Funcionario_id_garcom_)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_2
    FOREIGN KEY (fk_Funcionario_id_func, fk_Funcionario_id_setor_saude, fk_Funcionario_id_setor_rest, fk_Funcionario_CRM, fk_Funcionario_COREM, fk_Funcionario_id_clinico, fk_Funcionario_id_Pediatra, fk_Funcionario_id_cozinheiro, fk_Funcionario_id_garcom)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisiona ADD CONSTRAINT FK_Supervisiona_3
    FOREIGN KEY (fk_Funcionario_id_func_, fk_Funcionario_id_setor_saude_, fk_Funcionario_id_setor_rest_, fk_Funcionario_CRM_, fk_Funcionario_COREM_, fk_Funcionario_id_clinico_, fk_Funcionario_id_Pediatra_, fk_Funcionario_id_cozinheiro_, fk_Funcionario_id_garcom_)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisao_cozinha ADD CONSTRAINT FK_Supervisao_cozinha_2
    FOREIGN KEY (fk_Funcionario_id_func, fk_Funcionario_id_setor_saude, fk_Funcionario_id_setor_rest, fk_Funcionario_CRM, fk_Funcionario_COREM, fk_Funcionario_id_clinico, fk_Funcionario_id_Pediatra, fk_Funcionario_id_cozinheiro, fk_Funcionario_id_garcom)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisao_cozinha ADD CONSTRAINT FK_Supervisao_cozinha_3
    FOREIGN KEY (fk_Funcionario_id_func_, fk_Funcionario_id_setor_saude_, fk_Funcionario_id_setor_rest_, fk_Funcionario_CRM_, fk_Funcionario_COREM_, fk_Funcionario_id_clinico_, fk_Funcionario_id_Pediatra_, fk_Funcionario_id_cozinheiro_, fk_Funcionario_id_garcom_)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisao_garcom ADD CONSTRAINT FK_Supervisao_garcom_2
    FOREIGN KEY (fk_Funcionario_id_func, fk_Funcionario_id_setor_saude, fk_Funcionario_id_setor_rest, fk_Funcionario_CRM, fk_Funcionario_COREM, fk_Funcionario_id_clinico, fk_Funcionario_id_Pediatra, fk_Funcionario_id_cozinheiro, fk_Funcionario_id_garcom)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Supervisao_garcom ADD CONSTRAINT FK_Supervisao_garcom_3
    FOREIGN KEY (fk_Funcionario_id_func_, fk_Funcionario_id_setor_saude_, fk_Funcionario_id_setor_rest_, fk_Funcionario_CRM_, fk_Funcionario_COREM_, fk_Funcionario_id_clinico_, fk_Funcionario_id_Pediatra_, fk_Funcionario_id_cozinheiro_, fk_Funcionario_id_garcom_)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE CASCADE;
 
ALTER TABLE Pedidos ADD CONSTRAINT FK_Pedidos_2
    FOREIGN KEY (fk_Funcionario_id_func, fk_Funcionario_id_setor_saude, fk_Funcionario_id_setor_rest, fk_Funcionario_CRM, fk_Funcionario_COREM, fk_Funcionario_id_clinico, fk_Funcionario_id_Pediatra, fk_Funcionario_id_cozinheiro, fk_Funcionario_id_garcom)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE RESTRICT;
 
ALTER TABLE primeiros_socorros_Funcionario_Paciente ADD CONSTRAINT FK_primeiros_socorros_Funcionario_Paciente_1
    FOREIGN KEY (fk_Funcionario_id_func, fk_Funcionario_id_setor_saude, fk_Funcionario_id_setor_rest, fk_Funcionario_CRM, fk_Funcionario_COREM, fk_Funcionario_id_clinico, fk_Funcionario_id_Pediatra, fk_Funcionario_id_cozinheiro, fk_Funcionario_id_garcom)
    REFERENCES Funcionario (id_func, id_setor_saude, id_setor_rest, CRM, COREM, id_clinico, id_Pediatra, id_cozinheiro, id_garcom)
    ON DELETE NO ACTION;
 
ALTER TABLE primeiros_socorros_Funcionario_Paciente ADD CONSTRAINT FK_primeiros_socorros_Funcionario_Paciente_2
    FOREIGN KEY (fk_Paciente_fk_Cliente_id_cliente)
    REFERENCES Paciente (fk_Cliente_id_cliente)
    ON DELETE NO ACTION;
 
ALTER TABLE Ver_show ADD CONSTRAINT FK_Ver_show_1
    FOREIGN KEY (fk_Cliente_id_cliente)
    REFERENCES ??? (???);
 
ALTER TABLE Ver_show ADD CONSTRAINT FK_Ver_show_2
    FOREIGN KEY (fk_Palco_id_palco)
    REFERENCES Palco (id_palco)
    ON DELETE RESTRICT;