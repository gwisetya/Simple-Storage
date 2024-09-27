// SPDX-License-Identifier: MIT
pragma solidity 0.8.27; 
/*Create a contract AnimalFactory that includes a function createAnimals. This function must be 
capable of deploying the other 2 contracts Cows and Birds, which are simple contracts with just a constructor method.*/

contract Cows {
    string name; 
    constructor(string memory _name){
        name = _name;
    }
}

contract Birds {
    string name; 
    constructor(string memory _name){
        name = _name;
    }
}

contract AnimalFactory{
    Birds public bird; 
    Cows public cow; 

    function createCowContract(string memory _name) public {
        cow = new Cows(_name); 
    }

    function createBirdsContract(string memory _name) public {
        bird = new Birds(_name); 
    }
}