// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; 

contract AnimalList {
    string[] listOfAnimal = ['dog', 'cat', 'rooster']; 

    function addAnimal(string memory _animal) public{
        listOfAnimal.push(_animal); 
    }
}