// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

//ERROR HANDLING
//....require Statement

contract Require {
    function checkInput(uint256 input) public pure returns (string memory) {
        require(input >= 50, "Invalid uint8");
        require(input <= 200, "Invalid uint");

    return "Input is uint8";
    }
}