//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // stating our version

contract SimpleStorage {
    // Basic Types: boolean, uint, int,address, bytes
    // if  value is give favoriteNumber gets initialized to 0
   uint256 myfavoriteNumber;

   // uint256[] listOfFavoriteNumbers;
   struct Person{
    uint256 favoriteNumber;
    string name;
   }

   Person[] public listOfPeople;  //[]

   mapping (string => uint256) public nameToFavoriteNumber;

//    Person public pat = Person({favoriteNumber: 7, name: "pat"});
  
   function store(uint256 _favoriteNumber) public virtual {
       myfavoriteNumber = _favoriteNumber;
   }

// view, pure
   function retrieve () public view returns (uint256) {
    return myfavoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public {
    // Person memory newPerson = Person(_favoriteNumber, _name);
    listOfPeople.push(Person(_favoriteNumber, _name));
    nameToFavoriteNumber[_name] = _favoriteNumber;
   }





}

contract SimpleStorage2{}
contract SimpleStorage3{}
contract SimpleStorage4{}