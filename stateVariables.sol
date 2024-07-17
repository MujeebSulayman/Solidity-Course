// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract StateVariables {

    // TYPES OF VARIABLES
    // string public defaultText = "This is a default text";
    // uint256 public defaultNum = 10;

    // bytes public defaultBytes;
    // bytes public defaultBytesText = "Wagwan";

    // uint256[] myNumber;
    // uint256[] public myNumber;



    // constructor(string memory text, uint no) {
    //     myState = text;
    //     myNum = no;
    // }

    // function update(string memory _text, uint _no) public {
    //     myState = _text;
    //     myNum = _no;
    // }



    string myState;
    uint256 myNum;

    function GetData(string memory Name, uint Age) public  {
        myState = Name;
        myNum = Age;
    }

}
