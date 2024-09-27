// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DataLocations{
    string name;
    string surname;

    function changeNameAndSurname(string calldata _name, string memory _surname) public{
        name = _name; 
        _surname = 'Deacon'; 
        surname = _surname; 
    }
}