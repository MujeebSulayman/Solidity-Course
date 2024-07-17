// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract View {

        uint256 Num1 = 10;
        uint256 Num2 = 12;

    function TotalSum() public view returns (uint256, uint256) {
       
        uint256 total = Num1 + Num2;
        uint256 times = Num1 * Num2;
        return (total, times);
    }
}
 