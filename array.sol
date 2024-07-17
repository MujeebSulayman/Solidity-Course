// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    //Fixed Sized Array
    uint[10] public myFixedSizeArr;



    //Get a single array
    function get(uint i) view public returns (uint) {
        return arr[i];
    }


    //Get the entire array
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    //Push an object into the array
    function push(uint i) public {
        arr.push(i);
    }


    //Remove the last Array 
    function pop() public {
        arr.pop();
    }


    //Get the length of Array
    function getLength() public view returns (uint) {
        return arr.length;
    }

    //Remove a particular Data from the array 
    //but the length still remains the same just that its set to 0
    function remove(uint i) public  {
        delete arr[i]; 
    }

    function examples()  external  {
     uint[] memory a = new uint[](5);
    }
}