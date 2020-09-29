SELECT address1, address2, city, stateName, zipCode FROM People INNER JOIN 
Addresses ON People.addressID = Addresses.addressID INNER JOIN
States ON Addresses.stateID = States.stateID INNER JOIN
Games ON People.gameID = Games.gameID