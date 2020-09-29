 -- SELECT * FROM esports.people;
SELECT peopleID, firstName, lastName, gamerTag, email, PWD, phone, address1, address2, city, zipCode, gameName FROM esports.people
INNER JOIN esports.addresses ON esports.people.addressID = esports.addresses.addressID
INNER JOIN esports.games ON esports.people.gameID = esports.games.gameID