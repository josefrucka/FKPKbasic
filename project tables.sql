drop table projects;
drop table users;

CREATE TABLE users (
 user_id NUMBER,
 username VARCHAR2 (50 CHAR) NOT NULL UNIQUE,
 CONSTRAINT user_pk  PRIMARY KEY (user_id)
);

CREATE TABLE projects (
  project_id NUMBER,
  project_name VARCHAR2(50 CHAR) UNIQUE,
  creator VARCHAR2(50 CHAR) NOT NULL,
  CONSTRAINT projects_pk PRIMARY KEY (project_id),
  CONSTRAINT projects_users_fk FOREIGN KEY (creator) REFERENCES users (username)
  ON DELETE CASCADE
)

DROP TABLE project_users;
CREATE TABLE project_users(
 project_id NOT NULL REFERENCES projects (project_id) ON DELETE CASCADE,
 user_id NOT NULL REFERENCES users (user_id) ON DELETE CASCADE,
 CONSTRAINT project_users_pk PRIMARY KEY (user_id, project_id)
)
 
 INSERT INTO users
 VALUES (11, 'CalebCurri');
 
 INSERT INTO users
 VALUES (22, 'CalebsFriends');
 
 INSERT INTO projects 
 VALUES (2, 'Legitimate Project', 'CalebCurri');
 
 INSERT INTO project_users
 VALUES (2, 11);
 
 SELECT * FROM users;
 
 SELECT * FROM projects;
 
 SELECT * FROM project_users;
 