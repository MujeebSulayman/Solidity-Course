// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract DoWhileLoop {
    uint256[] data;
    uint8 i = 0;

    function whileLoop() public returns (uint256[] memory) {
        do {
            i++;
            data.push(i);
        } while (i < 5);
        return data;
    }
}
