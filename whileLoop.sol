// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


//WHILELOOP

contract WhileLoop {
    uint256[] data;
    uint8 i = 0;

    function loop() public returns(uint256[] memory) {
        while (i < 5) 
        {
            i++;
            data.push(i);
        }
        return data;
    }
}