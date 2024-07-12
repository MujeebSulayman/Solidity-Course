// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

//CONSTANTS

contract Constants {
    address public constant myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstant() public pure returns (address) {
        return myAdd;
    }
}