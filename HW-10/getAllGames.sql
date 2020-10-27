CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllGames`()
BEGIN
	SELECT * FROM games;
END