// SPDX-License-Identifier: MIT
pragma solidity 0.8.27; 

contract Mapping{
    mapping (address => uint256) addressToBalance; 

    function addAddress(address _address, uint256 _balance) public{
        addressToBalance[_address]= _balance; 
    }

    function viewBalance(address _address) public view returns(uint256){
        return addressToBalance[_address]; 
    }
}
