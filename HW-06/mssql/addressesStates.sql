SELECT address1, address2, city, stateName, zipCode FROM Addresses INNER JOIN 
States ON Addresses.stateID = States.stateID