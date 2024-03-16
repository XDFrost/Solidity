// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Conditional {
    int256 public myNum = 5;
    string public myString = "ABC";

    // function get(uint256 _num) public returns(string memory) {
    //     if(_num == 5) {
    //         myString = "Num value is 5";
    //     } 
    //     else if(_num == 4) {
    //         myString = "Num is 4";
    //     }
    //     else {
    //         myString = "Different Num value";
    //     }
    //     return myString;
    // }

    // Using ternary operator

    function shorthand(uint256 _num) public returns(string memory) {
        return _num == 5 ? myString = "True Value" : myString = "False Value";
    }
}
