// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Assert {
    bool result;

    function checkOverflow(uint256 num1, uint256 num2) public {
        uint256 sum = num1 + num2;
        assert(sum < 255);
        result = true;
    }

    function getResult() public view returns  (string memory){
        if (result == true) {
            return "This result is true";
        } else {
            return "This result is false";
        }
    }
}