// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
contract replace {
    uint[] arr;

    // Deleting an element creates a gap in the array
    // In order to keep the array compact, we have to move the last element to the place to delete and then pop
    function remove(uint id) public {
        // Move the last element to delete place
        arr[id] = arr[arr.length - 1]; 
        // Remove the last element
        arr.pop();
    }

    function test() public {
        arr = [1, 2, 3, 4];
        remove(1);
        // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }

    function show() public view returns(uint[] memory) {
        return arr;
    }
}
