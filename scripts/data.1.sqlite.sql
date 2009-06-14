-- script/data.1.sqlite.sql
-- script for loading data into the schema version 1

-- create 2 polls
INSERT INTO polls (id, title, created) VALUES (1, "How Foo are you?", DATETIME('NOW'));

INSERT INTO polls (id, title, created) VALUES (2, "Are you baz?", DATETIME('NOW'));

-- create responses to each poll; 3 for the first one and 2 for the second

INSERT INTO choices (id, description, poll_id) VALUES (1, "A little", 1);
INSERT INTO choices (id, description, poll_id) VALUES (2, "Average", 1);
INSERT INTO choices (id, description, poll_id) VALUES (3, "A ton!", 1);

INSERT INTO choices (id, description, poll_id) VALUES (4, "Yes!", 2);
INSERT INTO choices (id, description, poll_id) VALUES (5, "No!", 2);

-- add some responses

INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.1", 1);
INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.2", 2);
INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.3", 2);
INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.4", 2);
INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.100.100.124", 3);

INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.1", 4);
INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.4", 4);
INSERT INTO responses (submitter_ip, choice_id) VALUES ("127.0.0.7", 5);
