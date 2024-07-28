// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Mapping {

    //Mapping from Address to uint
    mapping(address => uint) public myMap;


    // How to get mapped Address
    function get(address _addr) public view returns(uint) {
        return myMap[_addr];
    }


    // How to set Address
    function set(address addr, uint id) public {
        myMap[addr] = id;
    }

    // Delete mapped address by resetting the value
    function remove(address addr) public  {
        delete myMap[addr];
    }
}