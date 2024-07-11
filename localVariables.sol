// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract LocalVariables {
    uint256 public myNumber;

    //Function for local variables
    function local() public returns (address, uint256, uint256) {
        uint256 i = 434;
        myNumber = i;
         i += 45;
            address myAddress = address(1);
        return (myAddress, myNumber, i);
    }
}
