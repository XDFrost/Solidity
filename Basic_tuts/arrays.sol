// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// Types:
    // 1. Compile-time fixed size array
    // 2. Dynamic size array

contract arrays {
    // Initializing
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    // Fixed size array, all elements initialized to 0
    uint[10] public myFixedArr;         // WE'LL USE THIS

    function get(uint id) public view returns(uint) {
        return arr[id];
    }

    // Solidity can return entire array but should be avoided for array of indefinite length
    function getfull() public view returns(uint[] memory) {
        return arr;
    }

    function push(uint id) public {
        // Append to array ; Increases length by 1
        arr.push(id);
    }

    function pop() public {
        // Removing last element of array ; Decreases length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint id) public {
        // Doesn't change the array length but removes the value by changing it to default value
        delete arr[id];
    }

    function examples() pure external {
        // Create an array in memory ; Only fixed size array can be created
        uint[] memory a = new uint[](5);
    }
}   
