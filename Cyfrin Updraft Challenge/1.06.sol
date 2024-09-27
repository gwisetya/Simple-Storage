// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Visibility{
    uint256 testVar = 6; 

    function privateView() private view returns(uint256) {
        return testVar; 
    }

    function externalPure() external pure returns(uint256) {
        return 1000; 
    }

    function internalView() internal view returns(uint256) {
        return testVar; 
    }
}