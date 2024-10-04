-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-10-04 17:23:16 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



DROP TABLE aplicacao CASCADE CONSTRAINTS;

DROP TABLE area CASCADE CONSTRAINTS;

DROP TABLE cultura CASCADE CONSTRAINTS;

DROP TABLE leitura CASCADE CONSTRAINTS;

DROP TABLE leitura_area CASCADE CONSTRAINTS;

DROP TABLE sensor CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE aplicacao (
    id_aplicacao        NUMBER(5) NOT NULL,
    id_area             NUMBER(5) NOT NULL,
    data_hora           DATE NOT NULL,
    quantidade_aplicada NUMBER(7, 2) NOT NULL,
    tipo_aplicacao      VARCHAR2(50) NOT NULL
);

ALTER TABLE aplicacao ADD CONSTRAINT pk_aplicacao PRIMARY KEY ( id_aplicacao );

CREATE TABLE area (
    id_area    NUMBER(5) NOT NULL,
    tamanho    NUMBER(7, 2) NOT NULL,
    id_cultura NUMBER(5) NOT NULL
);

ALTER TABLE area ADD CONSTRAINT pk_area PRIMARY KEY ( id_area );

CREATE TABLE cultura (
    id_cultura   NUMBER(5) NOT NULL,
    nome_cultura VARCHAR2(50) NOT NULL
);

ALTER TABLE cultura ADD CONSTRAINT pk_cultura PRIMARY KEY ( id_cultura );

CREATE TABLE leitura (
    id_leitura NUMBER(5) NOT NULL,
    id_sensor  NUMBER(5) NOT NULL,
    data_hora  DATE NOT NULL,
    valor      NUMBER(7, 3) NOT NULL
);

ALTER TABLE leitura ADD CONSTRAINT pk_leitura PRIMARY KEY ( id_leitura );

CREATE TABLE leitura_area (
    id_leitura_area NUMBER(5) NOT NULL,
    id_area         NUMBER(5) NOT NULL,
    id_leitura      NUMBER(5) NOT NULL
);

ALTER TABLE leitura_area ADD CONSTRAINT pk_leitura_area PRIMARY KEY ( id_leitura_area );

CREATE TABLE sensor (
    id_sensor   NUMBER(5) NOT NULL,
    tipo_sensor VARCHAR2(50) NOT NULL,
    descricao   VARCHAR2(100) NOT NULL
);

ALTER TABLE sensor ADD CONSTRAINT pk_sensor PRIMARY KEY ( id_sensor );

ALTER TABLE aplicacao
    ADD CONSTRAINT fk_aplicacao_area FOREIGN KEY ( id_area )
        REFERENCES area ( id_area );

ALTER TABLE area
    ADD CONSTRAINT fk_area_cultura FOREIGN KEY ( id_cultura )
        REFERENCES cultura ( id_cultura );

ALTER TABLE leitura_area
    ADD CONSTRAINT fk_leitura_area_area FOREIGN KEY ( id_area )
        REFERENCES area ( id_area );

ALTER TABLE leitura_area
    ADD CONSTRAINT fk_leitura_area_leitura FOREIGN KEY ( id_leitura )
        REFERENCES leitura ( id_leitura );

ALTER TABLE leitura
    ADD CONSTRAINT fk_leitura_sensor FOREIGN KEY ( id_sensor )
        REFERENCES sensor ( id_sensor );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
