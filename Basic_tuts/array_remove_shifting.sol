// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
contract Shift_array {
    // [1,2,3]  -->  remove(1)  -->  [1,3,3]  -->  [1,3]
    uint[] arr;
    
    function remove(uint _id) public {
        require(_id < arr.length, "Index out of bound");        // Execute if index < length
        
        for(uint i = _id; i<arr.length-1; i++) {
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1,2,3,4,5];
        remove(2);
    }

    function show() public view returns(uint[] memory){
        return arr;
    }
}
