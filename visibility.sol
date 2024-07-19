// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Visibility {

    //Private Function
    function privateVisibility() private pure returns (uint) {
        return "Private function called";
    }

    function testPrivateVisibility() public pure returns(uint) {
        return privateVisibility();
    }



    //Internal Function
    function internalVisibility() internal pure returns (uint) {
        return "internal function called"
    }

    function testInternalPrivate() public  pure virtual  returns (uint) {
        return internalVisibility();
    }



    //External funtion
    function externalVisibility() external pure returns (uint) {
        return "External function called"
    }



    //Public Function
     function publicVisibility() public pure returns (uint) {
        return "Public funtion called"
    }

    function testPublicFunction() external pure returns (uint) {
        return "external function called"
    }


    uint private privateVar = 5;
    uint public  publicVar = 10;
    uint internal internalVar = 20;
}