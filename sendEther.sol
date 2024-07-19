// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

// contract ReceiveEther {
    
//     receive() external payable {}

//     fallback() external payable{}

//     function getBalance() public view returns (uint) {
//         return address(this).balance;
//     }
// }


// contract SendEther {
//     function sendViaTransfer(address payable to) public payable {
//         to.transfer(msg.value);
//     }

//     function sendViaSend(address payable to) public payable {
//         bool sent = to.send(msg.value);
//         require(sent, "Failed to send Ether");
//     }


//     //Recommended method
//     function sendViaCall(address payable to) public payable  {
//         (bool sent, bytes memory data) = to.call{value: msg.value} ("");
//         require(sent, "Failed to send Ether");
//     }
// }

contract ReceiveToken {
    receive() external payable {}
    fallback() external payable{}

    function walletBalance() public view returns (uint) {
        return address(this).balance;
    }
}


contract sendToken {
    function sendEth(address payable sendTo) public payable   {
        (bool sent, bytes memory data) = sendTo.call{value: msg.value} ("");
        require(sent, "Failed to send Token"); 
    }
}