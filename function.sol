// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract LearnFunction {
    //uint
    uint256 hey;

    //Get data using function
    function getInfo() public view returns (uint256) {
        return hey;
    }

    //Updating data using function
    function updateDate(uint256 _hey) public {
        hey = _hey;
    }
}
