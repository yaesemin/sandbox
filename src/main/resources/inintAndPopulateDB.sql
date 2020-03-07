DROP TABLE IF EXISTS CLIENT;

CREATE TABLE CLIENT  (
      CLIENT_ID INT AUTO_INCREMENT  PRIMARY KEY , 
      BRANCH_ID SMALLINT , 
      EMPLOYER_ID INTEGER , 
      CATEGORY_ID SMALLINT NOT NULL , 
      FIRST_NAME VARCHAR(50) NOT NULL , 
      MIDDLE_NAME VARCHAR(50) NOT NULL , 
      LAST_NAME VARCHAR(50) NOT NULL , 
      TRANSLIT_NAME VARCHAR(60) , 
      DOB DATE , 
      POB VARCHAR(150) , 
      EMAIL VARCHAR(100) , 
      HAS_EMAIL_SUBSCRIPTION CHAR(1) NOT NULL , 
      LEGAL_ADDRESS VARCHAR(500) , 
      INN VARCHAR(12) , 
      PHONE VARCHAR(50) , 
      MOBILE_PHONE VARCHAR(50) , 
      PASS_SERIE VARCHAR(50) NOT NULL , 
      PASS_NUM VARCHAR(50) NOT NULL , 
      PASS_ISSUER VARCHAR(150) NOT NULL , 
      PASS_DATE DATE NOT NULL , 
      RESIDENT CHAR(1) NOT NULL , 
      LASTMODIFIED TIMESTAMP NOT NULL , 
      REGION_CODE INTEGER , 
      BUNDLE_CODE CHAR(4) , 
      IS_COMPLIANCE DECIMAL(1,0) , 
      IS_PEP DECIMAL(1,0) , 
      CURRENT_ADDRESS VARCHAR(500)
      );

INSERT INTO CLIENT (BRANCH_ID, EMPLOYER_ID, CATEGORY_ID, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TRANSLIT_NAME, DOB, POB, EMAIL, HAS_EMAIL_SUBSCRIPTION, LEGAL_ADDRESS, INN, PHONE, MOBILE_PHONE,
 PASS_SERIE, PASS_NUM, PASS_ISSUER, PASS_DATE, RESIDENT, LASTMODIFIED, REGION_CODE, BUNDLE_CODE, IS_COMPLIANCE, IS_PEP, CURRENT_ADDRESS) VALUES
(200, null, 60, 'Ivan', 'Ivanovich', 'Petrov', 'Petrov Ivan Ivanych', '1970-01-23', 'Moskow', 'some@mail.ru', 'N', 'address 1', '89777000', '+7-926-000-00-01', '+7-926-000-00-01', 'XXX', 'XXXXXX', 'YYYYYYYYYY',
'2000-05-30', 'Y', '2020-01-30 10:00:00', 77, null, 0, 0, 'current'),
(200, null, 60, 'Petr', 'Spiridonovish', 'Petryshev', 'Pedrichev Petr Spiridonovish', '1990-06-06', 'Moskow', 'some_new@mail.ru', 'N', 'address 2', '89777000', '+7-926-000-00-01', '+7-926-000-00-01', 'XXX', 'XXXXXX', 'YYYYYYYYYY',
'2000-05-30', 'Y', '2020-01-30 10:00:00', 77, null, 0, 0, 'current');

DROP TABLE IF EXISTS procuration;

CREATE TABLE procuration (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  state VARCHAR(250) NOT NULL,
  account DECIMAL NOT NULL,
  action INT DEFAULT NULL,
  p_client_id INT DEFAULT NULL,
  p_client_name VARCHAR(250) DEFAULT NULL,
  a_client_id INT DEFAULT NULL,
  a_client_name VARCHAR(250) DEFAULT NULL
);