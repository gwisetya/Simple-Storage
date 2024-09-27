//SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfSimpleStorage; 

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorageNew= new SimpleStorage(); 
        listOfSimpleStorage.push(simpleStorageNew); 
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        listOfSimpleStorage[_simpleStorageIndex].store(_simpleStorageNumber); 
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorage[_simpleStorageIndex].retrieve(); 
    }
}