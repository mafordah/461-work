CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllAddresses`()
BEGIN
	SELECT * FROM addresses;
END