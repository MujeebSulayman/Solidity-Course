// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Payable {
    address payable public owner;

    constructor() payable  {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function notPayable() public {}

    //Funtion to withdraw Ether
    function withdraw() public {
        //First, get the balance of the ether stored in your contract
        uint amount = address(this).balance;

        //send all Ether to owner
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    //Funtion to transfer Ether
    function transfer(address payable _to, uint _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}