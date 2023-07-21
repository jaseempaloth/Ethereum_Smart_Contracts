// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ArrayReplaceFromEnd{

    uint[] public arr;

    //deleting an element creates a gap in the array 

    function remove(uint index) public {
        arr[index] = arr[arr.length -1];
        arr.pop();

    }

    function test() public {
        arr= [ 1,2,4,5,6];
        remove(1);
        assert(arr.length == 3);

        remove (2);
        assert(arr.length == 2);
        assert(arr[0]==1);
        assert(arr[1] == 4);
    }

}