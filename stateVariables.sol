// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract StateVariables {
    // string public defaultText = "This is a default test";
    // uint256 public defaultNum = 10;

    // bytes public defaultBytes;
    // bytes public defaultBytesText = "Wagwan";

    // uint256[] myNumber;
    // uint256[] public myNumber;

    string public myState;
    uint256 public myNum;

    // constructor(string memory _text, uint _no) {
    //     myState = _text;
    //     myNum = _no;
    // }

    function update(string memory _text, uint _no) public {
        myState = _text;
        myNum = _no;
    }
}
