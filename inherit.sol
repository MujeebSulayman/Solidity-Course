// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
        }
    }

        //Contract inherit other contracts by using keyword 'is'
contract B is A{
        //it will override contract_A
    function foo() public pure virtual override returns (string memory){
            return "B";
    }
}


contract C is A  {

    //Override contract_A
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

contract D is B, C {
    function foo() public pure override (B, C) returns (string memory) {
        return super.foo();
    }   
}

contract E is C, B{
    function foo() public pure override (C, B) returns (string memory) {
        return super.foo();
    }
}

contract F is A, B {
    function foo() public pure override (A, B) returns (string memory) {
        return super.foo();
    }
}