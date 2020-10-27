CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllUsers`()
BEGIN
	SELECT * FROM users;
END