// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract View {
    uint256 public Num2 = 9;
    uint256 public Num1 = 2;

    //Using View to check the variables
    // function getResult() public view returns (uint256, uint256) {

    //     return (Num1, Num2);
    // }

    function getResults() public view returns (uint256, uint256) {
        // uint256 num1 = 11;
        // uint256 num2 = 10;

        // Num1 += 6;
        // Num2 += 10;

        uint256 product = Num1 * Num2;
        uint256 total = Num1 + Num2;

        return (product, total);
    }
}
 