-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-02-06 12:19:41 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE empresas (
    cod_empresa INT(6) NOT NULL,
    nombre      VARCHAR(25),
    factura     INT(6),
    fecha       DATE
);

ALTER TABLE empresas ADD CONSTRAINT empresas_pk PRIMARY KEY ( cod_empresa );

CREATE TABLE vendedores (
    cod_vend             INT(6) NOT NULL,
    nombre               VARCHAR(25),
    direccion            VARCHAR(50),
    empresa              INT(6),
    empresas_cod_empresa INT(6) NOT NULL
);

ALTER TABLE vendedores ADD CONSTRAINT vendedores_pk PRIMARY KEY ( cod_vend );

ALTER TABLE vendedores
    ADD CONSTRAINT vendedores_empresas_fk FOREIGN KEY ( empresas_cod_empresa )
        REFERENCES empresas ( cod_empresa );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             2
-- CREATE INDEX                             0
-- ALTER TABLE                              3
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
