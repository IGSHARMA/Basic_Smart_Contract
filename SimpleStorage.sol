//SPDX-License-Identifier: Prat
pragma solidity >=0.8.18 <0.9.0; // This tells the compiler any Solidity versions between this range will work

contract SimpleStorage {
    uint256 myFavoriteNumber; //When you initalize a var type it will initliaze to something if no value is given

    // uint256[] listOfFavoriteNumbers; 
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    //dynamic array
    Person[] public listOfPeople;


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    
    //view function is put does not allow to update state
    function retreive() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
