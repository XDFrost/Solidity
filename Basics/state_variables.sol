// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// DEFINED INSIDE CONTRACT

contract vars {
    string public myState;
    uint256 public myNum;    


    // UPDATING DATA OF STATE VARIABLES
    

    // string public defaultText = "This is default text";
    // uint256 public defaultNum = 10;    

    // bytes public defaultByte = "This is default text";           // Will be represented in a byte number form ; GAS EFFICIENT
    // bytes public mybyte;

    // uint256[] public myNumber;

    // constructor(string memory _text, uint256 _number) {
    //     myState = _text;
    //     myNum = _number;
    // }

    function updateVars(string memory _text, uint256 _number) public  {
        myState = _text;
        myNum = _number;
    }
}
