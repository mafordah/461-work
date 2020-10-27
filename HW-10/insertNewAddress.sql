CREATE DEFINER=`root`@`localhost` PROCEDURE `insertNewAddress`(in address1 varchar(250), in address2 varchar(250), in city varchar(250), in stateid int, in zip varchar(14))
BEGIN
	INSERT into addresses (address1, address2, city, stateid, zip) values (address1, address2, city, stateid, zip);
END