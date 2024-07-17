// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract RemovedataayByShifting {
    uint[] public data; 

    function remove(uint index) public  {
        require(index < data.length, "Index is out of bound");

        for (uint i = index; i < data.length - 1; i++ ) {
            data[i] = data[i + 1];
        }
        data.pop();
    }

    function test() external {
        data = [1,2,3,4,5,6];
        remove(2);

        assert(data[0] == 1);
        assert(data[1] == 2);
        assert(data[3] == 4);
        assert(data[4] == 5);

        assert(data.length == 4);

        data = [1];
        remove(0);

        assert(data.length == 0);
    }
}