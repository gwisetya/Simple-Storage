// SPDX-License-Identifier: MIT
pragma solidity 0.8.27; // use only version 0.8.27

contract SimpleStorage{
    struct Person{
        uint256 my_favorite_number; 
        string name; 
    }

    uint256 public favoriteNumber; // a function will update this variable
    uint256[] list_of_favorite_numbers;
    Person[] public list_of_people; 
    mapping (string => uint256) public nameToFavoriteNumber; 
    Person public my_friend = Person(7, 'Pat');
    /* equals to
    Person public my_friend = Person({
        favoriteNumber:7,
        name:'Pat'});
    */

    function store(uint256 _favoriteNumber) public {
        // the variable favorite number is updated with the value that is contained into the parameter `_favoriteNumber`
        favoriteNumber = _favoriteNumber; 
    } 

    function add_person(uint256 _favoriteNumber, string memory _name) public {
        list_of_people.push(Person(_favoriteNumber, _name)); 
        nameToFavoriteNumber[_name] = _favoriteNumber; 
    }

}
