// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Pure {
    function getData() public pure returns (uint256, uint256) {
        uint256 Num1 = 20;
        uint256 Num2 = 10;

        uint256 product = Num1 * Num2;
        uint256 total = Num1 + Num2;
        return (product, total);
    }
}
