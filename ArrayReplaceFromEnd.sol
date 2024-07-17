// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract ReplaceArrayFromEnd {

    //Remove object from the last value in an array
    uint[] public data;
    
    function pop( uint index ) public () {

        //This will give us the value of the last index
        data[index] = data[data.length - 1];

        //Remove the last element
        data.pop();
    }

    function test() public  {
        data = [1,2,3,4,5,6];
        remove(1);
        //This will give [1, 6, 3, 4, 5]

        //Now we do the check
        assert(data.length == 5);
        assert(data[0] == 1);
        assert(data[1] == 6);
        assert(data[2] == 3);
        assert(data[3] == 4);
        assert(data[4] == 5);

        remove(4);
        //[1, 6, 3, 4]

        assert(data.length == 4);
        assert(data.[0] = 1);
        assert(data.[1] = 6);
        assert(data.[2] = 3);
        assert(data.[3] = 4);
    }
}