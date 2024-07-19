// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract B {
    uint public num;
    address public sender;
    uint public value;

    function setVar(uint _num) public payable  {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract A {
    uint public num;
    address public sender;
    uint public value;
    
    function setVar(address _contract, uint _num ) public payable  {
        (bool success, bytes memory data) = _contract.delegateCall(
            abi.encodeWithSignature("setVar(uint256)", _num)
        );
    }
}  