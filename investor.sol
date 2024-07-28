// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Investor {
    
    address public owner; //Gets set somewhere
    address[] investors; //Array of Investors
    uint[] investorTokens //The amount of token each investor gets

    constructor() payable  {
        owner = payable(msg.sender);
    }

    //Send Token to Owner
    function transferToken( address payable sendTo, uint amount) public {
        (bool success) = sendTo.call{value: amount}("");
        require(success, "Failed to send Token");
    }

    function invest() public payable {
        investors.push(msg.sender);
        investorTokens.push(msg.value * 5) //5 times the wei sent;
    }

    function distribute() public{
        require(msg.sender == owner, "Only the owner can send Token");
        for ( uint i = 0; i < investors.length; i++) {
            transferToken(investors[i], investorTokens[i]);
        };

        //Get the balance
        uint amount = address(this.balance);
    }
}