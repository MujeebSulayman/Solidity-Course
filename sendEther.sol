// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract ReceiveToken {

    address payable owner;

    constructor() payable  {
        owner = payable(msg.sender);
    }

    function withdraw () public {
        uint amount = address(this).balance;
        (bool success, ) = owner.call{value: amount}("");
    }


    receive() external payable {}
    fallback() external payable{}


    function walletBalance() public view returns (uint) {
        return address(this).balance;
    }
}


//Contract to send Token
contract SendToken {
    function sendEth(address payable sendTo) public payable {
        (bool sent, bytes memory data) = sendTo.call{value: msg.value} ("");
        require(sent, "Failed to send Token"); 
    }
}




