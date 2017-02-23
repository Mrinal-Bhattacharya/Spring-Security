DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS users;
CREATE  TABLE users (
  userid int(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(45) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(60) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  PRIMARY KEY (userid));
  
CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  userid int(11) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id)
  );

INSERT INTO users(username,email,password,enabled)
VALUES ('user','abc@abc.com','$2a$04$sx55hwwqpPJdzoMUiE/Reu7sGPVTWm2.8FzCU8CBwoi73X741AbDG', true);
INSERT INTO users(username,email,password,enabled)
VALUES ('admin','def@def.com','$2a$04$ANUAQ4sWx2RhwxaBlirEPu6K6UYnZW1iiH9rnQkLsucAswmENF0yW', true);

INSERT INTO user_roles (userid, role)
VALUES (001, 'ROLE_USER');
INSERT INTO user_roles (userid, role)
VALUES (002, 'ROLE_ADMIN');
INSERT INTO user_roles (userid, role)
VALUES (002, 'ROLE_USER');