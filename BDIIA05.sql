-- BDIIA05

DROP DATABASE bd2;
CREATE DATABASE bd2;

USE bd2;

-- Restrições
-- Constraints
-- As restrições são usadas para limitar o tipo de dados que pode entrar em uma tabela. Isso garante a precisão e a confiabilidade dos dados na tabela. Se houver alguma violação entre a restrição e a ação dos dados, a ação será abortada.
-- Podem ser especificadas na criação ou inseridas na alteração da estrutura de uma tabela.

-- São retrições: 
-- NOT NULL - garante que uma coluna não possa ter um valor NULL
-- UNIQUE - Garante que todos os valores em uma coluna sejam diferentes
-- PRIMARY KEY  - Uma combinação de NOT NOT NULL e UNIQUE. Identifica exclusivamente cada linha em uma tabela
-- FOREIGN KEY  - Identifica exclusivamente uma linha / registro em outra tabela
-- CHECK - Garante que todos os valores em uma coluna satisfaçam uma condição específica
-- DEFAULT - Define um valor padrão para uma coluna quando nenhum valor é especificado
-- INDEX - Usado para criar e recuperar dados do banco de dados muito rapidamente


