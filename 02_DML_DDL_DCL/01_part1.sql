-- Data Definition Language (DDL)
-- A SQL sub-language for creating and managing a relational databases and their schemata.
-- Common statement keywords:
-- CREATE DATABASE
-- ALTER TABLE
-- DROP DATABASE
-- Examples:
CREATE TABLE
  cocoa (id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY, name varchar(100) NOT NULL);

ALTER TABLE cocoa
ADD COLUMN description text;

-- Data Manipulation Language (DML)
-- A SQL sub-language for data CRUD operations: Create, Retrieve, Update, Delete.
-- Common statement keywords:
-- INSERT INTO
-- SELECT
-- UPDATE
-- DELETE FROM
-- Examples:
INSERT INTO
  cocoa
VALUES
  (
    DEFAULT,
    'Tanzania - Kokoa Kamili',
    'Flavor Notes: The aroma is a clear, deep, resonating raisin and chocolate. There are additional base notes of burnt sugar and tight dark fruit.'
  ),
  (
    DEFAULT,
    'Bolivia - Rio Beni Wild Harvest',
    'Flavor Notes: The chocolate aroma is bold and undeniably chocolate and fresh leaf tobacco and green walnuts.'
  );

SELECT
  *
FROM
  cocoa;