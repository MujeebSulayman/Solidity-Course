// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Interface {
    uint public count;
    
    function increment() external {
    count += 1;
    }
}