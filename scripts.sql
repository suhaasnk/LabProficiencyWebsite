# drop existing procedure
DROP PROCEDURE IF EXISTS upvote; 
 
# change delimiter to $$ --> i.e. the statement terminator is changed to $$
DELIMITER $$ 
 
# name the procedure; this one HAS ONE argument
CREATE PROCEDURE upvote(IN usr_id INT)
BEGIN

DECLARE currentUpvote INT DEFAULT 0;

SELECT upvotes INTO currentUpvote FROM ratings WHERE id=usr_id;
UPDATE ratings SET upvotes = currentUpvote+1 WHERE id=usr_id;
SELECT upvotes FROM ratings WHERE id=usr_id; 

# statement (therefore, procedure) is over
END$$ 

# change the delimiter back to normal
DELIMITER ;
