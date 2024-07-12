// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract IfElse {
    uint256 public myNum = 5;
    string public myString;

    function get(uint256 num) public returns (string memory) {
        if (num == 5) {
            myString = "You are correct";
        } else {
            myString = "Not 5";
        }
    }

    //SHORTHAND fORMAT

    function shorthandGet(uint256 num) public returns(string memory) {
        myString = num == 5 ? "You are correct" : "You are wrong";
        return myString;
    }
}
