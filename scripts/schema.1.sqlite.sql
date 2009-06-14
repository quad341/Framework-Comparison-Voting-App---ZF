-- script/schema.1.sqlite.sql
-- needs to be loaded before the application will work

CREATE TABLE polls (
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   title VARCHAR(255) NOT NULL,
   created DATETIME NOT NULL
);

CREATE INDEX "poll_id" ON polls ( id );

CREATE TABLE choices (
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   description VARCHAR(255) NOT NULL,
   poll_id INTEGER NOT NULL
);

CREATE INDEX "choice_id" ON choices ( id );

CREATE TABLE responses (
   id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   submitter_ip CHAR(15) NOT NULL
   choice_id INTEGER NOT NULL
);

CREATE INDEX "response_id" ON responses ( id );
