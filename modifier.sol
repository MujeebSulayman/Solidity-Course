// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Modifier {
    address public owner;
    

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier validateDate(address addr){
        require(addr != address(0), "Not valid Address");
        _;
    }

    function changeOwner(address newOwner) public onlyOwner validateDate (newOwner){
        owner = newOwner;
    }
}