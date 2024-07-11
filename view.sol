// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract View {
    // uint256 Num1 = 2;
    // uint256 Num2 = 9;

    //Using View to check the variables
    // function getResult() public view returns (uint256, uint256) {
       
    //     return (Num1, Num2);
    // }

    function getResults() public pure returns(uint256 product, uint256 total){
        uint256 num1 = 11;
        uint256 num2 = 10;

        product = num1 * num2;
        total = num1 + num2;

    }
}
