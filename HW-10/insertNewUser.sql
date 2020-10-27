CREATE DEFINER=`root`@`localhost` PROCEDURE `insertNewUser`(in firstname varchar(50), in lastname varchar(50), in gamertag varchar(50), in email varchar(50), in PWD varbinary(250), in phone varchar(16))
BEGIN
	INSERT INTO users (firstname, lastname, gamertag, email, PWD, phone) values (firstname, lastname, gamertag, email, PWD, phone);
END