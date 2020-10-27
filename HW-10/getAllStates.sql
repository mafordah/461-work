CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllStates`()
BEGIN
	SELECT * FROM states;
END