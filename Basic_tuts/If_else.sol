// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract Conditional {
    int256 public myNum = 5;
    string public myString = "ABC";

    function get() public returns(string memory) {
        if(myNum == 5) {
            myString = "Num value is 5";
        } 
        else {
            myString = "Different Num value";
        }
        return myString;
    }

    function str() view public returns(string memory) {
        return myString;
    }
}
