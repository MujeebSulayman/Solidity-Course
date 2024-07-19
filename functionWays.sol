// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract FunctionWays {

    //Function return multiple value
    function returnMany() public pure returns(uint, bool, uint) {
        return (1, true, 2);
    }


    //Return values can be named.
    function name() public pure returns (uint x, bool b, uint y) {
        return (1, true, 2);
    }

    //Return values can be assigned to their name.
    //The return statement can be omitted
    function assigned () public pure returns (uint x, bool b, uint y) {
        x = 1; b = true; y = 2;
    }

    //Use destructuring assignment when calling another
    function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();
        
        (uint x, uint y) = (4, 5);
        return ( i, b, j, x, y);
     }
}