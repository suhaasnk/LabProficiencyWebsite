DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings(id INT, player_name VARCHAR(100), upvotes INT,  PRIMARY KEY(id));
INSERT INTO ratings(id, player_name, upvotes) VALUE (0, 'Lebron James', 0);
INSERT INTO ratings(id, player_name, upvotes) VALUE (1, 'Stephen Curry', 0);
INSERT INTO ratings(id, player_name, upvotes) VALUE (2, 'Kevin Durant', 0);
