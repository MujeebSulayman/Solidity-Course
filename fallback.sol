// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;


contract Fallback {
    event Log(string fun, uint gas);

    fallback() external payable {
        emit Log("fallback", gasleft());
     }

     receive() external payable { 
        emit Log("receive", gasleft());
     }

     function getBalance() public payable returns  (uint) {
        address(this).balance;
     }
}


contract sendToFallback {
    function transferToFallback(address payable to) public payable {
        (bool sent, bytes memory data) = to.call{value: msg.value} ("");
        require(sent, "Failed to send Ether");
    }
}