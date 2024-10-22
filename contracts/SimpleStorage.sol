// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract SimpleStorage{

    //Basics types: boolean, uint, address, int, bytes
    bool hasFavoriteNumber = true;
    uint256 favNumber = 10;//can specify the number of bits; uint256, uint16 etc
    int256 numb = -9;//can be negative or positive
    string word = "Learning solidity";
    address myAddress = 0xCFDf5A13325B0952b8b2Bed2DA869c40dc2B8aC6;
    bytes32 favBytes = "cat";

    //arrays
    uint256[4] listOfFavNumbers; //zero indexed
    //static array
    uint256[4] staticArray;// holds only 4 numbers
    //dynamic
    uint256[] dynamicArray;
    struct Person{
        uint256 id;
        string name;
    }
    Person[] public listOfPeople;

    //mapping - key value pairs
     mapping(string => uint256) public nameId;

    //functions
    uint256 public numToUpdate;

    function store(uint256 _numToUpdate) public virtual {
        numToUpdate = _numToUpdate;
    }

    //view, pure
    function retrieve()public view returns (uint256){
        return numToUpdate;
    }

    //memory, calldata, 
    function addPerson(uint256 _id, string memory _name) public {
        listOfPeople.push(Person(_id, _name));
        nameId[_name] = _id;
    }

    function retrieveAll() public view returns (Person[] memory){
        return listOfPeople;
    }
}